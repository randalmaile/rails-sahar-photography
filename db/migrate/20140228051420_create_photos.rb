class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :imagename
      t.date :dateshot
      t.string :size
      t.string :resolution
      t.string :imageurl
      t.string :clientname
      t.boolean :published

      t.timestamps
    end
  end
end
