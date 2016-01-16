class Pacman
  attr_reader :extra_lives, :points, :power_time
  def initialize
    @points, @extra_lives, @power_time = 0, 2, 0
  end

  def eat(ball_or_ghost)
    ball_or_ghost.class == "Ball" ? eat_ball(ball_or_ghost) : eat_ghost(ball_or_ghost)
  end

  private

  def eat_ball(ball)
    @super_time -= 1
    @points += 1000 if ball.ball_type == "regular"
    @power_time = 10 if ball.ball_type == "super"
    # if ball.ball_type == "regular"
    #   @points +=1000
    # end
    #
    # if ball.ball_type == "super"
    #   @power_time = 10
    # end
  end

  def eat_ghost(ghost)
    raise StandardError.new("What is that??") unless ghost.class == Ghost
    if @power_time > 0
      @points += 250000
    else
      die
    end
  end

  def die
    @extra_lives -= 1
    game_over if @extra_lives < 0
  end

  def game_over
    10.times { puts "!!!!!!!!!!You got #{@points}GAME OVER!!!!!!!!!!"}
  end
end
