# Create a BankAccount class
# Every bank account should have balance and interest_rate attributes
# At this point you should test out creating an instance of your class to make sure it works
# Your class should have an instance method called deposit that accepts one amount argument and adds that amount to the total balance
# Test out your method by calling it on an instance of your class
# There should be a withdraw instance method that accepts one amount argument and subtracts it from the total balance
# Don't forget to test it out!
# Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.


class BankAccount

  attr_accessor :balance, :interest_rate

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate  = interest_rate
  end

  def show_balance
    puts "Your balance is #{@balance}."
  end

  # def deposit(deposit_amount)
  #   @balance += deposit_amount
  #   "Deposited $#{deposit_amount}. Your new balance is $#{@balance}."
  # end
  #
  # def withdraw(withdraw_amount)
  #   @balance -= withdraw_amount
  #   "Withdrew $#{withdraw}. Your new balance is $#{@balance}."
  # end

  def gain_interest
    @balance *= @interest_rate + 1
    "Gained interest at #{@interest_rate}% over one period. Your new balance is $#{@balance}."
  end

end

savings = BankAccount.new(1000, 0.02)
checkings = BankAccount.new(500, 0.05)

# puts savings.inspect
# puts checkings.inspect

# puts savings.deposit(10)
# puts savings.withdraw(20)

puts savings.gain_interest
puts savings.show_balance
