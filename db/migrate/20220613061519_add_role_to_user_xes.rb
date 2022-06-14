class AddRoleToUserXes < ActiveRecord::Migration[7.0]
  def change
    add_column :user_xes, :role, :boolean, default: false
  end
end
