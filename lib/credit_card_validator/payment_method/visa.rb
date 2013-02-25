module CreditCardValidator
  module PaymentMethod
    class Visa < CreditCard

      PATTERN = /\A4\d{12}(\d{3})?\z/

      def name
        'VISA'
      end

    end
  end
end
