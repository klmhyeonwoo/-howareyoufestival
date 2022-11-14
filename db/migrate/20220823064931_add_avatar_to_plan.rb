class AddAvatarToPlan < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :avatar, :string
  end
end
