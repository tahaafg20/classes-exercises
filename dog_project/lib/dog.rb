class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    def name
       return @name
    end
    def name=(string)
        @name = string
     end
    def breed
        return @breed
    end
    def breed=(string)
        @breed = string
     end
    def age
        return @age
    end
    def age=(number)
        @age = number
     end
    def bark
        if @age > 3
            return @bark.upcase
        elsif @age <= 3
            return @bark.downcase
        end
    end
    def bark=(string)
        @bark = string
     end
    def favorite_foods
        return @favorite_foods
    end
    def favorite_foods=(array)
        @favorite_foods = array
     end
     def favorite_food?(string)
        string = string.downcase
        if @favorite_foods.to_s.downcase.include?(string)
            return true
        else
            return false
        end
     end
end
