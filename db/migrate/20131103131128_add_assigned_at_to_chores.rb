class AddAssignedAtToChores < ActiveRecord::Migration
  def change
    add_column :chores, :assigned_at, :datetime
  end
end
