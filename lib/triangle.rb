require "pry"
class Triangle
  # write code here
attr_accessor :a, :b, :c, :type
  def initialize(a, b, c)
    sides_array =[a, b, c]
    sides_array.sort!
    if (sides_array[0] + sides_array[1]) > sides_array[2] && sides_array[0] > 0
      @a, @b, @c = a, b, c
    else
        raise TriangleError
    end
  end

  def kind
      if a == b && b == c && c == a
        self.type = :equilateral
      elsif a == b || b == c || a == c
        self.type = :isosceles
      elsif a != b && b != c && a != c
        self.type = :scalene
      else
        self.type = triangle
      end
  end

      class TriangleError < StandardError
        def message
          "The sides of your triangle are not positive and does not pass the traingle inequality test "
        end
      end


end
