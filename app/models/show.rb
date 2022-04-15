class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #want to be able to use a show to show us the all of the actors full name 
        self.characters.map do |n|
            n.actors.first_name
        end 
    end 
  
end