class CreatePrintitems < ActiveRecord::Migration
  def change
    create_table :printitems do |t|
      t.integer :quantity
      t.string :finish
      t.string :dimensions
      t.string :papertype
      t.decimal :unitprice

      t.timestamps
    end
  end
end
