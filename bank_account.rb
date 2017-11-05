class BankAccount
  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit (amount)
    @balance += amount
    puts "you have $#{@balance}in your account now ."
  end

  def withdraw (amount)
    @balance -= amount
    puts "you have $#{@balance}in your account now ."
  end

  def gain_interest
    @balance = @balance * (1 + @interest_rate)
    puts "you have $#{@balance}in your account now ."
  end
end
  coco = BankAccount.new(250, 0.1)
  coco.gain_interest()
