class CreateSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :settings do |t|
      t.string :blog_name
      t.string :blog_description
      t.timestamps
    end
  end
end
