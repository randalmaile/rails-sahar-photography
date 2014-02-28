class CreatePhotosPrintitemsTable < ActiveRecord::Migration
  def self.up
    create_table :printorders_photos, :id => false do |t|
        t.references :printorder
        t.references :photo
    end
    add_index :printorders_photos, [:printorder_id, :photo_id]
    add_index :printorders_photos, :photo_id
  end

  def self.down
    drop_table :printorders_photos
  end
end
