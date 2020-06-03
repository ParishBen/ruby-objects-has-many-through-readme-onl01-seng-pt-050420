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
    largest_tip = 0
    best_tipping_customer = nil
    self.meals.each do |customer|
      if customer.tip > largest_tip
        largest_tip = meal.tip
        best_tipping_customer = customer
      end
    end
    best_tipping_customer
  end
