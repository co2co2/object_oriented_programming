class Cat
def initialize(name , preferred_food, meal_time )
  @name = name
  @preferred_food = preferred_food
  @meal_time = meal_time
end
def eat_at
  @meal_time
  if  @meal_time == 0
    return "12 am"
  elsif @meal_time == 12
    return "12 pm"
  elsif @meal_time > 12
    return "#{@meal_time-12}" << "pm"
  elsif @meal_time < 12
    return "#{@meal_time}am"
  end
end

def meow
   puts "I'm #{@name},feed me with #{@preferred_food} at #{eat_at}."
end
end
oreo = Cat.new('Oreo', 'Chicken', 21)
monkey = Cat.new("Monkey", "Tuna", 12)
oreo.meow
monkey.meow
