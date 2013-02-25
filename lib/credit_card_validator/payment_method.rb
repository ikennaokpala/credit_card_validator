module CreditCardValidator
  module PaymentMethod

    def self.credit_card_from_number(number)
      self.names.each do |name|
        return name.new(number) if name.is_valid_format?(number)
      end

      CreditCard.new(number)
    end

    def self.names
      ObjectSpace.each_object(Class).select { |name| name < CreditCard }
    end

  end
end
