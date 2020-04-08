class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    actors_list = []
    array_of_actors = self.characters.actor {|actor| actor.full_name}
    actors_list << array_of_actors
    actors_list
  end 
  
end