require "pry"

class Shoe
  BRANDS = []
  # ALL = []

  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand)
    @brand = brand
    if BRANDS.length == 0 
      BRANDS << @brand 
    else
      aa = BRANDS.select{|brand| brand == @brand}
      if aa.length == 0
        BRANDS << @brand
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

# binding.pry