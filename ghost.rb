class Ghost

  # constructor
  def initialize
    @color = %w(red pink purple yellow').sample
  end

  # getter
  attr_reader :color
  # def color
  #   @color
  # end
end
