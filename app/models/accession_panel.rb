# frozen_string_literal: true

class AccessionPanel < ApplicationRecord
  belongs_to :accession
  belongs_to :panel
end
