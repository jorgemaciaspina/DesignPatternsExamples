# app.rb
require_relative 'payment_methods'
require_relative 'payment_context'

card_strategy = CreditCardPayment.new
bank_strategy = BankTransferPayment.new

PaymentContext.new(card_strategy).execute(150)
PaymentContext.new(bank_strategy).execute(300)