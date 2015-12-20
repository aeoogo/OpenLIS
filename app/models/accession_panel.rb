class AccessionPanel < ApplicationRecord
  belongs_to :accession, inverse_of: :accession_panels
  belongs_to :panel, inverse_of: :accession_panels
end
