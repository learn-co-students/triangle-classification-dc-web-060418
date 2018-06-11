require 'pry'
class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    self.is_triangle?
    if self.a == self.b && self.a == self.c
      return :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      return :isosceles
    else
      return :scalene
    end
  end

  def is_triangle?
    if((self.a == 0) || (self.b == 0) || (self.c == 0) || self.a >= (self.b + self.c) || self.b >= (self.a + self.c) || self.c >= (self.a + self.b))
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "This is not a triangle"
  end
end
