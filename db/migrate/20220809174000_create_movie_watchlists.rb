class CreateMovieWatchlists < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_watchlists do |t|
      t.integer :rating
      t.text :review
      t.date :reviewed_at
      t.boolean :watching
      t.references :watchlist, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
