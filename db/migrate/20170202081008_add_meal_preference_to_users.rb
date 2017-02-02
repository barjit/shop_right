class AddMealPreferenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :preference, :integer
  end
end
