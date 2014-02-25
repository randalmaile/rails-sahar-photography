class AddEventDateToWorkorders < ActiveRecord::Migration
  def change
    add_column :workorders, :eventdate, :date
  end
end
