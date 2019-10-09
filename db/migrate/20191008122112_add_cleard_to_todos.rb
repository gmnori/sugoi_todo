class AddCleardToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :clear, :boolean, default: 0, null: 0
  end
end
