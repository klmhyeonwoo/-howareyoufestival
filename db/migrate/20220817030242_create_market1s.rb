class CreateMarket1s < ActiveRecord::Migration[7.0]
  def change
    create_table :market1s do |t|
      t.string :title
      t.string :sub_title
      t.boolean :status
      t.text :content
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
