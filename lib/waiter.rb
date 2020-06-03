class Waiter
attr_reader :name, :age
@@all = []
def initialize(name, age)
  @name= name
  @age = age
  @@all << self
 end
 def self.all 
   @@all
 end
 def new_meal(customer, total, tip)
   Meal.new(self,customer,total,tip)
 end
 def meals
end