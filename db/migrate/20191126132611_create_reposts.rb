class CreateReposts < ActiveRecord::Migration[5.2]
  def change
    create_table :reposts do |t|
      t.references :songs, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
