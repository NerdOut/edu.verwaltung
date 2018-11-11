class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :sortname
      t.string :company
      t.integer :postal
      t.string :street
      t.string :city
      t.string :phone
      t.string :fax
      t.string :mobile
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
