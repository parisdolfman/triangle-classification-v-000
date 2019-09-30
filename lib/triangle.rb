class Triangle

 attr_reader :a, :b, :c

 def initalize(a, b, c)
  @a = a
  @b = b
  @c = c
 end


  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end

class TriangleError < StandardError
end

end
