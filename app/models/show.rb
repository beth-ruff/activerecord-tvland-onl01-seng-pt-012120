class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    array_of_actors = []
    
  end 
  
end