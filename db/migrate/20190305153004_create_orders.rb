class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      # t.string :delivery_address
      # t.string :delivery_type
      # t.string :payment_type
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
