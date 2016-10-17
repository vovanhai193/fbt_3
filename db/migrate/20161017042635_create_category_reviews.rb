class CreateCategoryReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :category_reviews do |t|
      t.string :type

      t.timestamps
    end
  end
end
