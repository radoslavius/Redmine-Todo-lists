class AddPrivateField < ActiveRecord::Migration[4.2]
  def change
    change_table :todo_lists do |t|
      t.boolean :is_private, :default => false
    end
  end
end
