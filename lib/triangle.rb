class Triangle

 attr_reader :a, :b, :c

 def initalize(a, b, c)
  @a = a
  @b = b
  @c = c
 end


  def kind
    if !valid?
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end

  def valid?
    valid = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|x| valid << false if x <= 0}
    raise TriangleError if valid.include?(false)
  end


class TriangleError < StandardError
end

end
