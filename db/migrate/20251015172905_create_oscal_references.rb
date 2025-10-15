class CreateOscalReferences < ActiveRecord::Migration[8.0]
  def change
    create_table :oscal_references do |t|
      t.belongs_to :oscal_model

      t.string :format
      t.string :url
      t.text :blob

      t.timestamps
    end
  end
end
