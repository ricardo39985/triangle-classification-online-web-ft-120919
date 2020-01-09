class Triangle
  # write code here
  def initialize(one, two, three)
    @side_one  = one
    @side_two = two
    @side_three = three
  end
  def kind
    if [@side_one, @side_two, @side_three].any? { |e|e > 0 } && [@side_one, @side_two].sum > @side_three
      if [@side_one, @side_two, @side_three].all? { |e| e==@side_one }
        :equilateral
      elsif @side_one == @side_two || @side_two == @side_three
        :scalene
      else
        :isosceles
      end
    else
      begin
        raise TriangleError
      rescue PartnerError => error
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
