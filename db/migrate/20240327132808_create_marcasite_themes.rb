class CreateMarcasiteThemes < ActiveRecord::Migration[7.1]
  def change
    create_table :marcasite_themes do |t|
      t.string :name
      t.text :description
      t.text :css
      t.boolean :modifiable

      t.timestamps
    end
  end
end
