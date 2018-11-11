class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :ordernumber
      t.string :text
      t.string :customer

      t.timestamps
    end
  end
end
