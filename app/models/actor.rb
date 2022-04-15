class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
      n1 =  self.first_name
      n2 = self.last_name
      n1 + " " + n2
     end  

     def list_roles
       self.characters.map do |char|
      "#{char.name} - #{char.show.name}"
       end 
     end 

end

#   peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
#   thrones = Show.create(name: "Game of Thrones")
#   tyrion = Character.create(name: "Tyrion Lannister", actor_id: peter.id, show_id: thrones.id)

#   peter.list_roles
#   # ['Tyrion Lannister - Game of Thrones']