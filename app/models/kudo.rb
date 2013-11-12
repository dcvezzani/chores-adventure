class Kudo < ActiveRecord::Base
  attr_accessor :my_date

  belongs_to :recipient, class_name: "FamilyMember"

  has_many :votes, foreign_key: :item_id

  mount_uploader :picture, KudoPictureUploader
end
