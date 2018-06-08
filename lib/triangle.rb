require 'pry'
class Triangle
  # write code here
  attr_accessor :a, :b, :c
  attr_reader :sides

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def kind
    self.valid_triangle
    if a == b && a == c
      return :equilateral
    elsif a == b || a == c || b == c
      return :isosceles
    else
      return :scalene
    end
  end

  def valid_triangle
    #raise error if any side is larger than sum of two sides
    #raise error if any side is 0
    if self.sides.include?(0) || @a >= (@b+@c) || @b >= (@a+@c) || @c >= (@a+@b)
      #raise the error
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "Not a valid triangle"
  end
end