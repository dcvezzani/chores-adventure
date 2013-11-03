class Assignment < ActiveRecord::Base
  has_many :assignment_family_members
  has_many :family_members, through: :assignment_family_members

  has_many :assignment_needs
  has_many :needs, through: :assignment_needs

  has_many :assignment_rewards
  has_many :rewards, through: :assignment_rewards

  belongs_to :owner, class_name: "FamilyMember"
end
