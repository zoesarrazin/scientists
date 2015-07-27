class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.string :name
      t.string :birth
      t.string :location
      t.string :field
      t.text :content
      t.string :img_url

      t.timestamps null: false
    end
  end
end
