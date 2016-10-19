class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :category_review, index: true, foreign_key: true
      t.string :title
      t.string :content
      t.boolean :is_confirm, default: false
      t.attachment :image

      t.timestamps
    end
  end
end
