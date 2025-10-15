class OscalLayer < ApplicationRecord
    has_many :oscal_models
    has_many :oscal_references, through: :oscal_models
    has_many :oscal_schemas, through: :oscal_models
end
