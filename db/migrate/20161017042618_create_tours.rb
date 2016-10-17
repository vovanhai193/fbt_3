class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.references :category_tour, index: true, foreign_key: true
      t.string :name
      t.string :schedule
      t.string :place_departure
      t.string :time
      t.integer :people_number
      t.string :transport
      t.float :price
      t.string :content
      t.date :time_start
      t.float :rating

      t.timestamps
    end
  end
end
