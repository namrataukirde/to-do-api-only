class RenameUserIdOnToDo < ActiveRecord::Migration[5.2]
  def change
    rename_column :to_dos, :user_id, :created_by_id
  end
end
