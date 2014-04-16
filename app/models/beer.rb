class Beer < ActiveRecord::Base
  has_many :ratings

  def number_rating
    average = 0

    return average if ratings.length == 0

    ratings.each do |rating|
      average += rating.score
    end

    return average / ratings.length
  end
end
