class Pokemon < ApplicationRecord
  has_many :votes

  def increment_vote_count
    update_attributes!(vote_count: self.vote_count + 1)
  end
end
