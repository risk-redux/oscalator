class CreateOscalLayers < ActiveRecord::Migration[8.0]
  def change
    create_table :oscal_layers do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
