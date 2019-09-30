class Triangle

 attr_reader :a, :b, :c

 def initalize(a, b, c)
  @a = a
  @b = b
  @c = c
 end


  def kind
    validate_triangle
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end

    def validate_triangle
      valid_triangle = [
        (a_side + b_side > c_side),
        (a_side + c_side > b_side),
        (b_side + c_side > a_side)
      ]
      [a_side, b_side, c_side].each do |side|
        valid_triangle << false if side <= 0
        raise TriangleError if valid_triangle.include?(false)
      end
    end



class TriangleError < StandardError
end

end
