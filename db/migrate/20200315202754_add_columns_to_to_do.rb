class AddColumnsToToDo < ActiveRecord::Migration[5.2]
  def change
    add_column :to_dos, :completed, :boolean, default: false
    add_column :to_dos, :completed_at, :datetime
    add_column :to_dos, :assigned_by_id, :integer
  end
end
