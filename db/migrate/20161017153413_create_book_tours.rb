class CreateBookTours < ActiveRecord::Migration[5.0]
  def change
    create_table :book_tours do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tour, index: true, foreign_key: true
      t.integer :people_number
      t.string :requirement
      t.boolean :is_pay, default: false

      t.timestamps
    end
  end
end
