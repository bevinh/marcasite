class CreateSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :settings do |t|
      t.string :marcasite_name
      t.string :marcasite_description
      t.timestamps
    end
  end
end
