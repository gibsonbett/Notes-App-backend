class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :category
      t.string :todos
      t.integer :user_id
      t.timestamps
    end
  end
end