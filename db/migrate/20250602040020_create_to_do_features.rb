class CreateToDoFeatures < ActiveRecord::Migration[8.0]
  def change
    create_table :to_do_features do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.integer :todoId

      t.timestamps
    end
  end
end
