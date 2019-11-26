class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :follower
      t.references :followed
    end
    # Rails 5+ only: add foreign keys
    add_foreign_key :favorites, :users, column: :follower_id, primary_key: :id
    add_foreign_key :favorites, :users, column: :followed_id, primary_key: :id
  end
end
