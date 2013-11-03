class AssignmentReward < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :reward
end
