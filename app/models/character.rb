# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    movie_id = self.movie_id
    movie_match = Movie.where({:id => movie_id})
    movie_info = movie_match.at(0)

    return movie_info
  end 
end
