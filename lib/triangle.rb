class Triangle

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  def kind 
     if @side_one == 0 || @side_three == 0 || @side_two == 0 || @side_one + @side_two <= @side_three || @side_three + @side_one <= @side_two || @side_three + @side_two <= @side_one then raise TriangleError
     elsif @side_one == @side_three && @side_one == @side_two then :equilateral
     elsif @side_one == @side_two || @side_one == @side_three || @side_three == @side_two then :isosceles
      else :scalene
    end
  end

  class TriangleError < StandardError
    def message 
      "This is not a triangle"
    end
  end
end
