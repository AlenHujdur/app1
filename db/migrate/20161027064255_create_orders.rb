class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.string :info
      t.integer :quantity
      t.datetime :orderdate

      t.timestamps null: false
    end
  end
end
