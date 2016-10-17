class CreateCategoryTours < ActiveRecord::Migration[5.0]
  def change
    create_table :category_tours do |t|
      t.string :type

      t.timestamps
    end
  end
end
