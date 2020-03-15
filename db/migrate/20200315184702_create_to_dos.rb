class CreateToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :to_dos do |t|
      t.string :description
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
