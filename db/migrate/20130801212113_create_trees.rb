class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :title
      t.string :picture
      # t.references :node, index: true
      t.string :tree_type

      t.timestamps
    end
  end
end
