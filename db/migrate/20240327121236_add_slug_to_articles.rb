class AddSlugToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :marcasite_articles, :slug, :string
    add_index :marcasite_articles, :slug, unique: true
  end
end
