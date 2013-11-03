class AddCompletedAtToChores < ActiveRecord::Migration
  def change
    add_column :chores, :completed_at, :datetime
  end
end
