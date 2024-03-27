class AddSlugToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :blog_articles, :slug, :string
    add_index :blog_articles, :slug, unique: true
  end
end
