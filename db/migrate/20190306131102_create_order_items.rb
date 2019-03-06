class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
<<<<<<< HEAD:db/migrate/20190305144017_create_order_items.rb
    	t.integer :product_id
    	t.integer :order_id
    	t.float :unit_price
    	t.integer :quantity
    	t.float :total_price
=======
      
      t.belongs_to :order
      t.belongs_to :item

>>>>>>> developpement:db/migrate/20190306131102_create_order_items.rb
      t.timestamps
    end
  end
end
