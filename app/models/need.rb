class Need < ActiveRecord::Base

  has_many :votes, foreign_key: :item_id
  has_many :chore_needs
  has_many :chores, through: :chore_needs

  mount_uploader :picture, NeedPictureUploader

  def vote(direction, author)
    weight = (direction == :up) ? 1 : -1
    vote = NeedVote.create!(weight: weight, author_id: author.id, item_id: self.id)
  end

  def votes_weight
    the_votes = NeedVote.where{item_id == 3}.select{sum(weight)}.to_a
    (the_votes.blank?) ? 0 : the_votes.first.attributes["sum"].to_i
  end

end
