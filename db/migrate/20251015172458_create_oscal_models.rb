class CreateOscalModels < ActiveRecord::Migration[8.0]
  def change
    create_table :oscal_models do |t|
      t.belongs_to :oscal_layer

      t.string :title
      t.text :description
      t.text :version
      t.string :current_state

      t.timestamps
    end
  end
end
