class Triangle

  attr_reader :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
        raise TriangleError
    
    elsif ((self.side1 + self.side2 <= self.side3) || (self.side1 + self.side3 <= self.side2) || (self.side3 + self.side2 <= self.side1))
      raise TriangleError
      
    elsif (self.side1 == self.side2) && (self.side2 == self.side3)
      return :equilateral
    elsif ((self.side1 == self.side2) || (self.side2 == self.side3) || (self.side1 == self.side3))
      return :isosceles    
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message1
      "The triangle inequality is violated."
    end

    def message2
      "The sides of the triangle are less than or equal to zero"
    end
  end


end
