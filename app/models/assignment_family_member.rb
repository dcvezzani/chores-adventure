class AssignmentFamilyMember < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :family_member
end
