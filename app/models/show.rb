class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    actors_list = []
    array_of_shows = self.shows.map {|shows| shows.name}
  end 
  
end