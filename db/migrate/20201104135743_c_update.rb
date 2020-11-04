class CUpdate < ActiveRecord::Migration[6.0]
  def change
    change_table :categories do |t|
      t.change :name, :string
    end
    add_index :categories, :name, unique: true
  end

end
