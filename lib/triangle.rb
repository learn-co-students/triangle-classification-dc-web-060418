require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.zero_negative?
      raise TriangleError
      begin
      rescue TriangleError => error
        puts error.message1
      end
    elsif self.triangle_inequality?
      raise TriangleError
      begin
      rescue Triangle_Error => error
        puts error.message2
      end
    elsif self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    else
      :scalene
    end
  end

  def equilateral?
    side1 == side2 && side2 == side3
  end

  def max_side
    [side1, side2, side3].max.to_i
  end

  def full_length
    side1 + side2 + side3
  end

  def isosceles?
    (side1 == side2 || side2 == side3 || side3 == side1) && self.triangle_inequality? == false
  end

  def triangle_inequality?
    (self.full_length - self.max_side) <= self.max_side
  end

  def zero_negative?
    side1 <= 0 || side2 <=0 || side3 <= 0
  end


  class TriangleError < StandardError

    def message1
      "Please use numbers greater than zero."
    end

    def message2
      "The sum of the lengths does not equate to a triangle!"
    end
  end

end
