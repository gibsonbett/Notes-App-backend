class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :todos
      t.integer :category_id
    end
  end
end
