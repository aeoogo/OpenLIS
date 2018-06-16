# frozen_string_literal: true

require 'test_helper'

class LabTestTest < ActiveSupport::TestCase
  should validate_presence_of(:code)
  should validate_uniqueness_of(:code)
  should validate_presence_of(:department)
  should validate_presence_of(:name)
  should validate_length_of(:loinc).is_at_most(10)

  test 'name contains extra spaces' do
    lab_test = LabTest.create(name: '  Lab Test  ')
    assert_equal 'Lab Test', lab_test.name
  end

  test 'no extra spaces between names' do
    lab_test = LabTest.create(name: 'Lab  Test')
    assert_equal 'Lab Test', lab_test.name
  end
end
