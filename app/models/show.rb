class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    actors = []
    array_of_actors = self.actors.map {|actor| actor.name}
    array_of_shows = self.shows.map {|shows| shows.name}
    role = array_of_characters.concat array_of_shows
    roles << role.join(" - ")
    roles
  end
end