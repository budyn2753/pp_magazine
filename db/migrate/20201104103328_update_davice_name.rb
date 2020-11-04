class UpdateDaviceName < ActiveRecord::Migration[6.0]
  def change
    change_table :devices do |t|
      t.change :name, :string, unique: true
    end

  end
end
