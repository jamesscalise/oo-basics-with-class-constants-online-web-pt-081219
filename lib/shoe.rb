class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand, :BRANDS
  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !(BRANDS.include?(brand))
      BRANDS << brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    @brand = brand
    if !(BRANDS.include?(brand))brand
      @brand = 
      BRANDS << brand
    end
  end
end

yes = Shoe.new("PRADA")
yes.brand="DIOR"
yes.brand="CHANEL"
yes.brand="DIOR"
puts yes.BRANDS
