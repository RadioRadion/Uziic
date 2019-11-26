class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :tags
      t.string :name
      t.string :photo
      t.date :post_at
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
