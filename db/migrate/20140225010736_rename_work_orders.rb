class RenameWorkOrders < ActiveRecord::Migration
  def self.up
    rename_table :work_orders, :workorders
  end

  def self.down
    rename_table :workorders, :work_orders
  end
end
