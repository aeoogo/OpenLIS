# frozen_string_literal: true

class Patient < ApplicationRecord
  include PgSearch::Model

  ANIMAL_SPECIES = (0..3).to_a
  GENDERS = %w[F M U].freeze

  belongs_to :insurance_provider, optional: true

  has_many :accessions, dependent: :destroy
  has_many :notes, as: :noticeable, dependent: :destroy

  validates :animal_type, inclusion: { in: ANIMAL_SPECIES }, allow_blank: true
  validates :gender, inclusion: { in: GENDERS }
  validates :given_name, presence: true, length: { minimum: 2 }
  validates :family_name, presence: true,
                          length: { minimum: 2 },
                          unless: -> { partner_name.present? }
  validates :partner_name, presence: true,
                           length: { minimum: 2 },
                           unless: -> { family_name.present? }
  validates :birthdate, presence: true, not_in_the_future: true
  validates :identifier, uniqueness: { case_sensitive: false },
                         allow_blank: true
  validates :email, email: true, allow_blank: true
  validates :phone, phone: { allow_blank: true, types: :fixed_line }
  validates :cellular, phone: { allow_blank: true, types: :mobile }

  accepts_nested_attributes_for :accessions, allow_destroy: true

  scope :recent, -> { order(updated_at: :desc).limit(10) }
  scope :sorted, -> { order(Arel.sql('LOWER(my_unaccent(family_name))')) }
  scope :ordered, ->(order) { order(order.flatten.first || 'created_at DESC') }

  auto_strip_attributes :given_name, :middle_name, :family_name, :family_name2,
                        :partner_name, :identifier, :cellular, :phone, :address,
                        :policy_number

  before_save :titleize_names
  after_commit :flush_cache

  pg_search_scope :search_by_name, against: %i[identifier
                                               family_name family_name2
                                               partner_name
                                               given_name middle_name],
                                   ignoring: :accents

  def self.search(query)
    if query.present?
      search_by_name(query)
    else
      all.sorted
    end
  end

  def self.cached_recent
    Rails.cache.fetch([name, 'recent_patients']) do
      recent.to_a
    end
  end

  private

  def titleize_names
    self.given_name = given_name.mb_chars.titleize if given_name
    self.middle_name = middle_name.mb_chars.titleize if middle_name
  end

  def flush_cache
    Rails.cache.delete([self.class.name, 'recent_patients'])
  end
end
