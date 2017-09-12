class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :date_string
      t.datetime :date_date
      t.string :image_url
      t.float :total_cal
      t.float :total_protein
      t.float :total_fat
      t.float :total_carbs
      t.string :category
      t.integer :user_id
      
      t.timestamps
    end
  end
end
