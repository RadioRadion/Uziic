class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :tags
      t.string :title
      t.string :description
      t.string :music_url
      t.string :photo
      t.date :post_at
      t.float :duration
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
