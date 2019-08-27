class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand, :BRANDS
  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    @brand = brand
    if !(BRANDS.includes(brand))
      @brand = brand
      BRANDS << brand
      puts "adding " + brand
    end
  end
end

yes = Shoe.new("PRADA")
yes.brand="DIOR"
yes.brand="CHANEL"
puts yes.BRANDS
