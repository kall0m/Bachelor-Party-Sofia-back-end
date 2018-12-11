class ChangeRoleColumnTypeInUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :role, :integer, default: 2
  end

  def down
    change_column :users, :role, :string
  end
end
