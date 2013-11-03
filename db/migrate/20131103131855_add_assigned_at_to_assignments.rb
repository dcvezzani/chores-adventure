class AddAssignedAtToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :assigned_at, :datetime
  end
end
