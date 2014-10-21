class BigDady
  attr_accessor :value

  def initialize(num)
    @value=num
  end

  def +(c=0)
    BigDady.new(@value+c.value)
  end
end

a=BigDady.new(5)
b=BigDady.new(4)
c=a+b

puts c.value