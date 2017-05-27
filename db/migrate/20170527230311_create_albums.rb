class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.integer :released
      t.string :album_image_url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
