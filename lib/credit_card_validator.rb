require_relative "credit_card_validator/version"

require_relative 'credit_card_validator/payment_method'
require_relative 'credit_card_validator/payment_method/credit_card'
require_relative 'credit_card_validator/payment_method/amex'
require_relative 'credit_card_validator/payment_method/discover'
require_relative 'credit_card_validator/payment_method/master_card'
require_relative 'credit_card_validator/payment_method/visa'

module CreditCardValidator

  def self.validate(number)
    if credit_card = PaymentMethod.credit_card_from_number(number.to_s.gsub(/[^\d]/, ''))
      "#{credit_card.name}: #{credit_card.number} (#{credit_card.validity})"
    end
  end

end
