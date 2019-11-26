class CreateReposts < ActiveRecord::Migration[5.2]
  def change
    create_table :reposts do |t|
      t.references :song, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
