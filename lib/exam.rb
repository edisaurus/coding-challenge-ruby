class Bakery
  attr_accessor :number_of_items, :item_code
  
  def initialize(number_of_items, item_code)
    @number_of_items = number_of_items
    @item_code = item_code
  end
end

def add(a,b)
    a + b
end