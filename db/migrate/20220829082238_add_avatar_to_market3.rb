class AddAvatarToMarket3 < ActiveRecord::Migration[7.0]
  def change
    add_column :market3s, :avatar, :string
  end
end
