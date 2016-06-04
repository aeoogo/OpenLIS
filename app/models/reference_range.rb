class ReferenceRange < ApplicationRecord
  # Consider caching this model

  GENDERS = [
    # Displayed  stored in db
    ['Both',     '*'],
    ['Female',   'F'],
    ['Male',     'M'],
    ['Unknown',  'U']
  ]

  AGE_UNITS = [
    # Displayed  stored in db
    ['Years',    'Y'],
    ['Months',   'M'],
    ['Weeks',    'W'],
    ['Days',     'D']
  ]

  ANIMAL_SPECIES = (0..3).to_a

  belongs_to :lab_test, inverse_of: :reference_ranges

  scope :for_its_gender, ->(gender) { where(gender: [gender, '*']) }
  scope :for_its_type, ->(type) { where(animal_type: [type, 0]) }
  scope :for_its_age_in_units, ->(age_days, age_weeks, age_months, age_years) {
    where(["(min_age <= ? AND max_age > ? AND age_unit = 'D') OR (min_age <= ? AND max_age IS NULL AND age_unit = 'D') OR (min_age IS NULL AND max_age > ? AND age_unit = 'D') OR (min_age IS NULL AND max_age IS NULL) OR (min_age <= ? AND max_age > ? AND age_unit = 'W') OR (min_age <= ? AND max_age IS NULL AND age_unit = 'W') OR (min_age IS NULL AND max_age > ? AND age_unit = 'W') OR (min_age IS NULL AND max_age IS NULL) OR (min_age <= ? AND max_age > ? AND age_unit = 'M') OR (min_age <= ? AND max_age IS NULL AND age_unit = 'M') OR (min_age IS NULL AND max_age > ? AND age_unit = 'M') OR (min_age IS NULL AND max_age IS NULL) OR (min_age <= ? AND max_age > ? AND age_unit = 'Y') OR (min_age <= ? AND max_age IS NULL AND age_unit = 'Y') OR (min_age IS NULL AND max_age > ? AND age_unit = 'Y') OR (min_age IS NULL AND max_age IS NULL)", age_days, age_days, age_days, age_days, age_weeks, age_weeks, age_weeks, age_weeks, age_months, age_months, age_months, age_months, age_years, age_years, age_years, age_years])
  }

  validates :animal_type, inclusion: { in: ANIMAL_SPECIES }, allow_blank: true
  validates :gender, inclusion: { in: GENDERS.map { |_disp, value| value } }
  validates :min_age, presence: true, if: :max_age
end
