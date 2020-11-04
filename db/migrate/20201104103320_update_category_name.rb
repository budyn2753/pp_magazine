class UpdateCategoryName < ActiveRecord::Migration[6.0]
  def change
    change_table :categories do |t|
      t.change :name, :string, unique: true
    end
  end
end
