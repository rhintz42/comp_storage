class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :url
      t.boolean :is_in_storage
      t.boolean :is_borrowable
      t.boolean :is_sellable
      t.references :tree, index: true

      t.timestamps
    end
    #add_index :nodes, :tree_id
  end
end
