# payment_methods.rb

class CreditCardPayment
  def pay(amount)
    puts "Processing credit card payment: $#{amount}"
  end
end

class BankTransferPayment
  def pay(amount)
    puts "Processing bank transfer: $#{amount}"
  end
end