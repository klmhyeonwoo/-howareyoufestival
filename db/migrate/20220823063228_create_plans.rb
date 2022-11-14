class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
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
