class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.string :location
      t.text :synopsis
      t.string :genre
      t.string :poster

      t.timestamps
    end
  end
end
