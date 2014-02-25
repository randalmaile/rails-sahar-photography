class AddNewFieldToWorkorder < ActiveRecord::Migration
  def change
    add_column :workorders, :orderstatus, :string
    add_column :workorders, :quotedprice, :decimal
  end
end
