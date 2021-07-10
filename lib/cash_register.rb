class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(total = 0,discount)
    self.title = title
    @discount = discount
  end
  
  def total
    self.total
  end
  
  def add_item(title,price,quantity)
    self.total += price
  end
  
  def apply_discount()
    self.total -= discount
  end
  
end