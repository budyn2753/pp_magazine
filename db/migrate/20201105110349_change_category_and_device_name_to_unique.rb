class ChangeCategoryAndDeviceNameToUnique < ActiveRecord::Migration[6.0]
  def up
    change_table :categories do |t|
      t.change :name, :string
    end
    change_table :devices do |t|
      t.change :name, :string
    end
    add_index :categories, :name, unique: true
    add_index :devices, :name, unique: true
  end
  def down
    change_table :categories do |t|
      t.change :name, :string
    end
    change_table :devices do |t|
      t.change :name, :string
    end
    remove_index :categories, :name
    remove_index :devices, :name
  end

end
