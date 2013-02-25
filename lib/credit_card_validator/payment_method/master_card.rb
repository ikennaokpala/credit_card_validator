module CreditCardValidator
  module PaymentMethod
    class MasterCard < CreditCard

      PATTERN = /\A5[1-5]\d{14}\z/

      def name
        'MasterCard'
      end

    end
  end
end