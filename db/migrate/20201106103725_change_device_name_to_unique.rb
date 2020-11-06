class ChangeDeviceNameToUnique < ActiveRecord::Migration[6.0]
  def up
    change_column :devices, :name, :string, collation:'NOCASE'
    add_index :devices, :name, unique: true
  end
  def down
    change_column :devices, :name, :string
    remove_index :devices, :name
    end
end
