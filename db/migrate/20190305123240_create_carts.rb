class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|

      t.timestamps
      t.belongs_to :user, index: true
    end
  end
end
