class ChoreReward < ActiveRecord::Base
  belongs_to :chore
  belongs_to :reward
end
