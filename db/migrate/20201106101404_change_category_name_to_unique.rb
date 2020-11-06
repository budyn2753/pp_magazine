class ChangeCategoryNameToUnique < ActiveRecord::Migration[6.0]
  def up
    change_column :categories, :name, :string, collation:'NOCASE'
    add_index :categories, :name, unique: true
  end
  def down
    change_column :categories, :name, :string
    remove_index :categories, :name
  end
end
