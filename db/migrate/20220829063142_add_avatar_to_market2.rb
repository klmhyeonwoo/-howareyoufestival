class AddAvatarToMarket2 < ActiveRecord::Migration[7.0]
  def change
    add_column :market2s, :avatar, :string
  end
end
