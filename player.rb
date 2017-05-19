# Create a class called Player.
# Every player should have four attributes: gold_coins, health_points, and lives.
# lives should start at 5.
# gold_coins should start at 0.
# health_points should start at 10.
# Your class should have an instance method called level_up that increases lives by one.
# Your class should have an instance method called collect_treasure that increases gold_coins by one. If gold_coins is a multiple of ten (eg, 10, 20, 30, and so on)
# then the collect_treasure method should run the level_up method.
# Your class should have an instance method called do_battle that accepts one damage argument and subtracts it from the player's health_points.
# If health_points falls below one, subtract one from lives and reset health_points to ten. If you have run out of lives, this method should run another method called restart (see below).
# The restart instance method should set all attributes back to their starting values (5, 0, and 10).


class Player

  attr_accessor :gold_coins, :health_points, :lives

  def initialize   #(gold_coins, health_points, lives)
    @gold_coins = 5
    @health_points = 0
    @lives = 10
  end

  def level_up
    @lives += 1
    "You have #{@lives}"
  end

  def collect_treasure
      @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 0
      @lives -= 1
      @health_points = 10
    end
    if @lives == 0
      restart
    end
    "You have #{@health_points} health points!"
  end#

  def restart
    @gold_coins = 5
    @health_points = 0
    @lives = 10
    "Restart: you now have #{@gold_coints} gold coins, #{@health_points} health points, and #{@lives} lives"
  end
end

player1 = Player.new

puts player1.level_up
puts player1.do_battle(3)
puts player1.restart
