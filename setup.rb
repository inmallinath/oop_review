require "./pacman.rb"
require "./ball.rb"
require "./ghost.rb"

def setup
  @pacman = Pacman.new
  @regular_ball = Ball.new
  @super_ball = Ball.new("super")
  @ghost1 = Ghost.new
  @ghost2 = Ghost.new
  @ghost3 = Ghost.new
  @ghost4 = Ghost.new

  puts "Welcome to Pacman!"
  puts "You have #{pacman.lives} lives."
end

def play_through
  10.times{@pacman.eat(@regular_ball)} # points should equal 10000
  puts "You have #{@pacman.points} points."
  @pacman.eat(@ghost1) # extra lives should decrease by 1 (eq: 1)
  @pacman.eat(@super_ball) # set power_time to 10
  puts "You ate a super ball. power_time: #{@pacman.power_time}"
  @pacman.eat(@ghost2)
  @pacman.eat(@ghost3)
  @pacman.eat(@ghost4)
  puts "You have #{@pacman.points} points!"
  10.times{@pacman.eat(@regular_ball)} # power_time should be less than zero
  @pacman.eat(@ghost1)
  puts "You have #{@pacman.extra_lives} lives and #{@pacman.points} points."
end
