require 'pry'

class Dog
 
    @@all = []

    attr_accessor :name, :save

    def initialize(name)
        @name = name
        save
    end    

    def self.all
        @@all
    end  
    
    def self.print_all
       puts self.all.map {|dog| dog.name}
      
    end
    
    def self.clear_all
        self.all.clear
    end    

    def save
        @@all << self

        #binding.pry
    end    
end

dog1 = Dog.new("pet")
dog2 = Dog.new("pop")

# binding.pry
# 0