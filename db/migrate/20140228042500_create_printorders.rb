class CreatePrintorders < ActiveRecord::Migration
  def change
    create_table :printorders do |t|
      t.string :title
      t.string :email
      t.string :phone
      t.text :description
      t.text :comments
      t.string :status
      t.string :clientname

      t.timestamps
    end
  end
end
