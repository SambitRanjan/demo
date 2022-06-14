class CreateUserXes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_xes do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      #t.boolean :role, default: false

      t.timestamps
    end
  end
end
