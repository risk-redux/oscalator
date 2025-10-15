class OscalModel < ApplicationRecord
    belongs_to :oscal_layer
    has_many :oscal_references
    has_many :oscal_schemas
end
