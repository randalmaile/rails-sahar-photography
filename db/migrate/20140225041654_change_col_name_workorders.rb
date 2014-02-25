class ChangeColNameWorkorders < ActiveRecord::Migration
  def self.up
    rename_column :workorders, :type, :jobtype
  end

  def self.down
  end
end
