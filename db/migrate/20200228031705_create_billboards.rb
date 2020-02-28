class CreateBillboards < ActiveRecord::Migration[6.0]
  def change
    create_table :billboards do |t|
      t.string :name
      t.string :genre
      t.integer :number

      t.timestamps
    end
  end
end
