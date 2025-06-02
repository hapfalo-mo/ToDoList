class CreateToDos < ActiveRecord::Migration[8.0]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.integer :userId

      t.timestamps
    end
  end
end
