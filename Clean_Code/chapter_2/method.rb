class AccountW
  def initialize(customer)
    @customer = customer
  end

  #Bad method--------------------------------
  def money(amount)
    @customer_balance = amount
  end
end

class AccountR
  def initialize(customer)
    @customer = customer
  end

  def customer
    @customer
  end

  #Good method
  def pay_bill(amount)
    @customer_balance = amount
  end
  def customer_balance
    @customer_balance
  end

  def customer_info
    "Customer: #{@customer}, Pay_bill: #{@customer_balance}"
  end

  def to_s
    "Customer: #{@customer}, Pay_bill: #{@customer_balance}"
  end
end

# AccountW------------
account = AccountR.new("Masum")
p account
p account.pay_bill(100)
puts account.customer_info
puts "Customer: #{account.customer}, Pay Bil: #{account.customer_balance}"
p "///////called to_s ///////"
puts account
p "///////////called customer_info///////////"
puts account.customer_info

