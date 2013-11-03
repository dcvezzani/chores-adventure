class AddOwnerIdToAssignments < ActiveRecord::Migration
  def change
    add_reference :assignments, :owner, index: true
  end
end
