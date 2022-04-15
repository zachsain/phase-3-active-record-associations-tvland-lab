class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say

       catch = self.catchphrase
       name = self.name

        "#{name} always says: #{catch}"
    end 
end