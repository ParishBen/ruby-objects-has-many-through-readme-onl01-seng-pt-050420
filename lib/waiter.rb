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
   Meal.all.select {|meal| meal.waiter==self}
 end
 def best_tipper
   meals.collect {|meal| sorted= [] 
   sorted << meal.tip
   really = sorted.sort 
   if meal.tip == really.last 
     meal.customer}
   end
 
end