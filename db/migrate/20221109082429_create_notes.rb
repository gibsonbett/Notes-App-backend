class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :note
      t.integer :category_id
      t.integer :user_id
      
    end
  end
end
