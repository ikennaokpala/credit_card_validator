module CreditCardValidator
  module PaymentMethod
    class Amex < CreditCard

      PATTERN = /\A3[4|7]\d{13}\z/

      def name
        'AMEX'
      end

    end
  end
end
