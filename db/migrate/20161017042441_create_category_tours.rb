class CreateCategoryTours < ActiveRecord::Migration[5.0]
  def change
    create_table :category_tours do |t|
      t.string :title

      t.timestamps
    end
  end
end
