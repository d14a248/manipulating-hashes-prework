require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |person, data|
    #binding.pry
    data.each do |attribute, value|
      if attribute == :favorite_icecream_flavors
        #binding.pry
        value.each do |flavor|
         
          if flavor == "strawberry"
          #binding.pry
            contacts[person][attribute].delete("strawberry")
            
           end
         end
       end
     end
   end

  #remember to return your newly altered contacts hash!
  
  contacts
  
end

