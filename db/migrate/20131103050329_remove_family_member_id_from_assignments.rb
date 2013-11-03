class RemoveFamilyMemberIdFromAssignments < ActiveRecord::Migration
  def change
    remove_reference :assignments, :family_member, index: true
  end
end
