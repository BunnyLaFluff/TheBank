class Customer
  attr_accessor :name, :location

  def initialize (name, location)
    @name = name
    @location = location
  end
end
#classes are capt - not methods
class Account
  attr_reader :account_num, :balance
  attr_accessor :customer, :account_type

  def initialize(customer, balance, account_num, account_type)
    @customer = customer
    @balance = balance
    @account_num = account_num
    @account_type = account_type
  end

  def deposit
    puts "How much would you like to deposit?"
    print "$"
    amount = gets.chomp.to_f
    @balance += amount
    puts "Your new balance is $#{'%0.2f'%(@balance)}"
  end
def withdrawal
  puts "How much would you like to withdraw?"
  print "$"
  amount = gets.chomp.to_f
  #checking for available funds
  if @balance < amount
    @balance -= (amount +25) #adding negative numbers
 else
   @balance -= amount
 end
puts "Your new balance is $#{'%0.2f'%(@balance)}"
 end
end
