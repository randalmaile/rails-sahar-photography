class AddPrintorderToPrintitem < ActiveRecord::Migration
  def change
    add_column :printitems, :printorder_id, :integer
    add_index :printitems, :printorder_id
  end
end
