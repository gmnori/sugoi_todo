class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :task
      t.integer :point
      t.date :duedate

      t.timestamps
    end
  end
end
