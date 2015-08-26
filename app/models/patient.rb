class Patient < ActiveRecord::Base
  include PgSearch

  ANIMAL_TYPES = [0, 1, 2, 3]
  GENDERS = [
    #Displayed  stored in db
    [ I18n.translate('patients.female'),  "F" ],
    [ I18n.translate('patients.male'),    "M" ],
    [ I18n.translate('patients.unknown'), "U" ]
  ]

  validates :animal_type, inclusion: { in: ANIMAL_TYPES }, allow_blank: true
  validates_presence_of :given_name, :family_name, :birthdate
  validates_inclusion_of :gender, in: GENDERS.map {|disp, value| value}
  validate :birthdate_cant_be_in_the_future
  validates_uniqueness_of :identifier, allow_blank: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, allow_blank: true

  belongs_to :insurance_provider, inverse_of: :patients
  has_many :accessions, inverse_of: :patient, dependent: :destroy
  has_many :notes, as: :noticeable

  accepts_nested_attributes_for :accessions, allow_destroy: true

  scope :recent, -> { order(updated_at: :desc).limit(10) }
  scope :sorted, -> { order('LOWER(my_unaccent(family_name))') }
  scope :ordered, ->(order) { order(order.flatten.first || 'created_at DESC') }

  before_save :titleize_names
  after_commit :flush_cache

  pg_search_scope :search_by_name, against: [:identifier,
                                             :family_name, :family_name2,
                                             :given_name, :middle_name],
                                             ignoring: :accents

  def self.search(query)
    if query.present?
      search_by_name(query)
    else
      all.sorted
    end
  end

  def self.cached_recent
    Rails.cache.fetch([name, 'recent']) do
      recent.to_a
    end
  end

  def age
    days_per_year = 365.25
    ((Date.current - birthdate.to_date).to_i / days_per_year).floor
  end

  def age_to_display
    age_in_days = (Date.current - birthdate.to_date).to_i
    parts = age_parts(age_in_days)
    if parts['years'] == 0
      if parts['months'] == 0
        parts['days']
      else
        parts['months']
      end
    else
      parts['years']
    end
  end

  def age_units
    age_in_days = (Date.current - birthdate.to_date).to_i
    parts = age_parts(age_in_days)
    if parts['years'] == 0
      if parts['months'] == 0
        I18n.t('patients.day')
      else
        I18n.t('patients.month')
      end
    else
      I18n.t('patients.year')
    end
  end

  def age_parts(in_days)
    parts = Hash.new
    factors = [['years', 365.25],['months', 30.4375],['days', 1]]
    factors.collect do |unit, factor|
      value, in_days = in_days.divmod(factor)
      parts[unit] = value
    end
    parts
  end

  def gender_name
    case gender
    when "F"
      I18n.translate('patients.female')
    when "M"
      I18n.translate('patients.male')
    when "U"
      I18n.translate('patients.unknown')
    else
      I18n.translate('patients.unknown')
    end
  end

  private

  def birthdate_cant_be_in_the_future
    errors.add(:birthdate, I18n.t('flash.patient.birthday_cant_be_in_the_future')) if birthdate > Date.current unless birthdate.nil?
  end

  def titleize_names
    self.given_name = given_name.mb_chars.titleize.squish if given_name
    self.middle_name = middle_name.mb_chars.titleize.squish if middle_name
    self.family_name = family_name.squish if family_name
    self.family_name2 = family_name2.squish if family_name2
    self.identifier = identifier.squish if identifier
    self.phone = phone.squish if phone
    self.address = address.squish if address
    self.policy_number = policy_number.squish if policy_number
  end

  def flush_cache
    Rails.cache.delete([self.class.name, 'recent'])
  end
end
