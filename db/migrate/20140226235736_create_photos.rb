class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.date :dateshot
      t.string :size
      t.string :resolution
      t.string :photourl
      t.string :clientname

      t.timestamps
    end
  end
end
