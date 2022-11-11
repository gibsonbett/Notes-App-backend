class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :cat
      t.integer :user_id
      t.integer :note_id
    end
  end
end
