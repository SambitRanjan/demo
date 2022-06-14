class CreateGiftcoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :giftcoupons do |t|
      t.belongs_to :user_x, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.float :gift_card_value
      t.float :total_amount
      t.string :mobile_no
      t.string :address
      t.date :order_date
      t.string "status", default: "Out for Delivery"

      t.timestamps
    end
  end
end
