class CreateImagesTours < ActiveRecord::Migration[5.0]
  def change
    create_table :images_tours do |t|
      t.references :tour, index: true, foreign_key: true
      t.attachment :image

      t.timestamps
    end
  end
end
