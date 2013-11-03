class Reward < ActiveRecord::Base

  has_many :votes, foreign_key: :item_id
  has_many :chore_rewards
  has_many :chores, through: :chore_rewards


  def vote(direction, author)
    weight = (direction == :up) ? 1 : -1
    vote = RewardVote.create!(weight: weight, author_id: author.id, item_id: self.id)
  end

  def votes_weight
    the_votes = RewardVote.where{item_id == 3}.select{sum(weight)}.to_a.first.attributes["sum"]
    (the_votes.blank?) ? 0 : the_votes.first.attributes["sum"].to_i
  end

end
