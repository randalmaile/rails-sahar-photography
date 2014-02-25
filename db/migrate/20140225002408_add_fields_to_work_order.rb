class AddFieldsToWorkOrder < ActiveRecord::Migration
  def change
    add_column :work_orders, :email, :string
  end
end
