module CreditCardValidator
  module PaymentMethod
    class CreditCard

      attr_reader :number

      def self.is_valid_format?(number)
        defined?(self::PATTERN) && number =~ self::PATTERN || false
      end

      def initialize(number)
        @number = number
      end

      def name
        'Unknown'
      end

      def validity
        valid? ? 'valid' : 'invalid'
      end

      def valid?
        self.class.is_valid_format?(number) && is_valid_luhn?
      end

      def is_valid_luhn?
        number.reverse.split(//).map(&:to_i).collect.with_index do |d, i|
          d *= 2 if i.odd?
          d > 9 ? d - 9 : d
        end.inject(:+) % 10 == 0
      end

    end
  end
end
