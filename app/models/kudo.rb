class Kudo < ActiveRecord::Base
  belongs_to :recipient

  has_many :votes, foreign_key: :item_id

  mount_uploader :picture, KudoPictureUploader
end
