class AddForeignKeyToToDoFeatures < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :to_do_features, :to_dos
    add_index :to_do_features, :to_do_id
  end
end
