class CreateAssignmentFamilyMembers < ActiveRecord::Migration
  def change
    create_table :assignment_family_members do |t|
      t.references :assignment, index: true
      t.references :family_member, index: true

      t.timestamps
    end
  end
end
