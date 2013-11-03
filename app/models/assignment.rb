class Assignment < ActiveRecord::Base
  belongs_to :chore
  has_many :assignment_family_members
  has_many :family_members, through: :assignment_family_members
end
