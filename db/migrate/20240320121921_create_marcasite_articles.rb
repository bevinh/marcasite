class CreateMarcasiteArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :marcasite_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
