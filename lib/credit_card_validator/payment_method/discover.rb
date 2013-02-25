module CreditCardValidator
  module PaymentMethod
    class Discover < CreditCard

      PATTERN = /\A6011\d{12}\z/

      def name
        'Discover'
      end

    end
  end
end