class Triangle
  # write code here
  def initialize(one, two, three)
    @side_one  = one
    @side_two = two
    @side_three = three
  end
  def kind
    if [@side_one, @side_two, @side_three].all { |e|e > 0 } && [@side_one, @side_two].sum > @side_three
      if [@side_one, @side_two, @side_three].all? { |e| e==@side_one }
        :equilateral
      elsif (@side_one == @side_two || @side_two == @side_three || @side_three == @side_one)
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
  end
  class TriangleError < StandardError
    def message
      "Not a valid triangle"
    end

  end
end
