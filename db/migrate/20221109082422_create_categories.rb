class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category 
      t.integer :note_id
      t.integer :user_id  
    end
  end
end
