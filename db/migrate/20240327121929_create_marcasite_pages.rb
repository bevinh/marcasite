class CreateMarcasitePages < ActiveRecord::Migration[7.1]
  def change
    create_table :marcasite_pages do |t|
      t.string :title
      t.text :text
      t.string :slug

      t.timestamps
    end
  end
end
