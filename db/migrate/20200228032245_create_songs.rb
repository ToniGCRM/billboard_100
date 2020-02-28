class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.text :name
      t.text :genre
      t.integer :rank
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
