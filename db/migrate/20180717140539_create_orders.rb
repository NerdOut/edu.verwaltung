class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :ordernumber
      t.text :text
      t.references :customer
      t.datetime :entry_time
      t.datetime :finish_time
      t.text :comment
      t.string :building_license
      t.string :bills
      t.timestamps
    end
  end
end
