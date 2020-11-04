class DeviceUpdate < ActiveRecord::Migration[6.0]
  def change
    change_table :devices do |t|
      t.change :name, :string
    end
    add_index :devices, :name, unique: true
  end

end
