# payment_context.rb

class PaymentContext
  def initialize(strategy)
    @strategy = strategy
  end

  def execute(amount)
    @strategy.pay(amount)
  end
end