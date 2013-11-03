class Chore < ActiveRecord::Base

  has_many :assignments

  has_many :chore_needs
  has_many :needs, through: :chore_needs

  has_many :chore_rewards
  has_many :rewards, through: :chore_rewards

end
