class AddAvatarToMarket1 < ActiveRecord::Migration[7.0]
  def change
    add_column :market1s, :avatar, :string
  end
end
