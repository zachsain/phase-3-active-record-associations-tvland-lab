class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #want to be able to use a show to show us the all of the actors full name 
        array = []
        self.actors.map do |n|
            
           first =  n.first_name
           last = n.last_name
           full_name = "#{first} #{last}"
           array << full_name
         
        end 
        array
    end 
  
end