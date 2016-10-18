class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tour, index: true, foreign_key: true
      t.integer :star_number

      t.timestamps
    end
  end
end
