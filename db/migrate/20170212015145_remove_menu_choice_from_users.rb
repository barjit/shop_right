class RemoveMenuChoiceFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :menu_choice, :string
  end
end
