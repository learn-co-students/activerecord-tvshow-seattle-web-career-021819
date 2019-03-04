class Show < ActiveRecord::Base

  def self.highest_rating #highest value in ratings column
    self.maximum(:rating)
  end

  def self.most_popular_show #SHOW w highest rating
    rating = self.highest_rating
    self.find_by! rating: rating
  end

 def self.lowest_rating #lowest value in ratings column
   self.minimum(:rating)
 end

 def self.least_popular_show #SHOW w lowest rating
   low_rating = self.lowest_rating
   self.find_by! rating: low_rating
 end

 def self.ratings_sum #sum all ratings of all shows
   self.sum(:rating)
 end

 def self.popular_shows #array of all shows w ratings above 5
   self.where("rating >= ?", 5 )
 end

 def self.shows_by_alphabetical_order #all shows alphabetical order
   self.order(:name)
 end

end
