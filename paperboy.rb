# Every day, each paperboy is given a house number to start at and a house number to finish at.
# They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota. If at the end of the day they haven't met
# their quota, they lose $2.
#
# The minimum number of papers to deliver is 50. The quota is calculated as half of your experience added to the minimum.
# So the first time a paperboy makes a delivery, the quota is 50. The next time, the quote is 50 plus half the number of papers that the
# paperboy has delivered in the past. In this way the quota should increase after every delivery the paperboy makes.
#
# As a stretch exercise you can figure out how to ensure it still works if the above assumption isn't met!

class Paperboy

  attr_reader :earnings
  attr_accessor :name, :experience

 def initialize(name) #, experience, earnings)
   @name = name
   @experience = 0
   @earnings = 0
 end

 def quota
   # This method should calculate and return the paperboy's quota for his next delivery
   quota = @experience / 2 + 50
 end

 def deliver(start_address, end_address)
   # This method will take two house numbers and return the amount of money earned on this delivery as a floating point number.
   # It should also update the paperboy's experience!
   # Let's assume that the start_address is always a smaller number than the end_address

   # Every day, each paperboy is given a house number to start at and a house number to finish at.
   # They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota. If at the end of the day they haven't met
   # their quota, they lose $2.

   houses_total = end_address - start_address + 1
   today_earnings = 0
   if houses_total < quota
     today_earnings = 0.25 * houses_total - 2
   elsif
     today_earnings = 0.25 * quota + 0.5 * (houses_total - quota)
   end
   @experience += houses_total
   @earnings += today_earnings
   return @earnings

  end

  def report
  "I'm #{@name}, I've delivered #{@experience} and I've earned $#{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy")

puts tommy.quota # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
