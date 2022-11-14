class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :sub_title
      t.text :content
      t.text :youtubeUrl
      t.text :youtubeKey
      t.text :youtubeSaveImg

      t.timestamps
    end
  end
end
