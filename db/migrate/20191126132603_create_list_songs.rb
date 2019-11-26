class CreateListSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :list_songs do |t|
      t.references :list, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
