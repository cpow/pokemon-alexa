class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  after_create :update_vote_for_pokemon

  def update_vote_for_pokemon
    self.pokemon.increment_vote_count
  end
end
