class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    self.actors.each do |actors|
     "#{actors.first_name} - #{actors.last_name}"
    end.join
  end
end