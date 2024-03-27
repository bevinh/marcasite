class CreateMarcasiteComments < ActiveRecord::Migration[7.1]
  def change
    create_table :marcasite_comments do |t|
      t.integer :article_id
      t.text :text

      t.timestamps
    end
  end
end
