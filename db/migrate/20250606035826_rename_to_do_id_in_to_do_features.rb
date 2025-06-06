class RenameToDoIdInToDoFeatures < ActiveRecord::Migration[8.0]
  def change
    rename_column :to_do_features, :todoId, :to_do_id
  end
end
