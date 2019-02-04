class CreateWorkRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :work_records do |t|
      t.string :text
      t.integer :hours
      t.belongs_to :user, foreign_key: true
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
