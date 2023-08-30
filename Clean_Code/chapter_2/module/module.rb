module Math
  def add(numb1, numb2)
    numb1 + numb2
  end

  def subtract(numb1, numb2)
    numb1 - numb2
  end
end

class CashRegister
  include Math
  def calculate_sum(numb1, numb2)
    add(numb1, numb2)
  end
  def calculate_subtract(numb1, numb2)
    subtract(numb1, numb2)
  end
end

# Create an instance of CashRegister
cash_register = CashRegister.new
numb1 = 50
numb2 = 70

# Calculate the change
change = cash_register.calculate_sum(numb1, numb2)
puts "Sum: #{change}"
change = cash_register.calculate_subtract(numb1, numb2)
puts "Subtract: #{change}"