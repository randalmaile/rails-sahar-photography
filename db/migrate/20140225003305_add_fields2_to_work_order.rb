class AddFields2ToWorkOrder < ActiveRecord::Migration
  def change
    add_column :work_orders, :address, :string
    add_column :work_orders, :city, :string
    add_column :work_orders, :state, :string
    add_column :work_orders, :zip, :integer
    add_column :work_orders, :country, :string
    add_column :work_orders, :phone, :string
    add_column :work_orders, :description, :text
    add_column :work_orders, :type, :string
    add_column :work_orders, :comments, :text
  end
end
