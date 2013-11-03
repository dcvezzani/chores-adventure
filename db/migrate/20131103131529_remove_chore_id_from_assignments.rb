class RemoveChoreIdFromAssignments < ActiveRecord::Migration
  def change
    remove_reference :assignments, :chore, index: true
  end
end
