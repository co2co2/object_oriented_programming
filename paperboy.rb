class Paperboy

def initialize(name)
  @name = name
  @experience = 0
  @earnings
end

def deliver (start_address, end_address)
  @delivered = (end_address - start_address).abs + 1
  @experience += @delivered
  if @delivered - quota < 0
    return @earnings = 0.25 * @delivered - 2
  else
    return @earnings = 0.25 * quota + 0.5 * (@delivered - quota)
  end
  report
end

def quota
  return 50 + 0.5 * @experience
end

def report
puts "I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
puts "My new quota is #{quota}."
end

end

tommy = Paperboy.new("Tommy")
tommy.deliver(1, 75)
tommy.report
tommy.deliver(20,25)
tommy.report
tommy.deliver(200,20)
tommy.report
