class AddDueAtToChores < ActiveRecord::Migration
  def change
    add_column :chores, :due_at, :datetime
  end
end
