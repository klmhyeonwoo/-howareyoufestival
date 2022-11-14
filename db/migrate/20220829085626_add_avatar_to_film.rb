class AddAvatarToFilm < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :avatar, :string
  end
end
