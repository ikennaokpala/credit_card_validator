require 'spec_helper'

describe CreditCardValidator do

  context 'valid Amex' do
    let(:result){ CreditCardValidator.validate(378282246310005) }
    let(:print_output){  'AMEX: 378282246310005 (valid)' }

    it 'should validate as a valid Amex Credit Card' do
      result.should eql(print_output)
    end
  end

  context 'invalid Amex' do
    let(:result){ CreditCardValidator.validate(378282246310006) }
    let(:print_output){  'AMEX: 378282246310006 (invalid)' }

    it 'should validate as a invalid Amex Credit Card' do
      result.should eql(print_output)
    end
  end

  context 'valid Discover' do
    let(:result){ CreditCardValidator.validate(6011111111111117) }
    let(:print_output){  'Discover: 6011111111111117 (valid)' }

    it 'should validate as a valid Discover Credit Card' do
      result.should eql(print_output)
    end
  end

  context 'invalid Discover' do
    let(:result){ CreditCardValidator.validate(6011111111111114) }
    let(:print_output){  'Discover: 6011111111111114 (invalid)' }

    it 'should validate as a invalid Discover Credit Card' do
      result.should eql(print_output)
    end
  end

  context 'valid MasterCard' do
    let(:result){ CreditCardValidator.validate(5105105105105100) }
    let(:print_output){  'MasterCard: 5105105105105100 (valid)' }

    it 'should validate as a valid MasterCard Credit Card' do
      result.should eql(print_output)
    end
  end

  context 'invalid MasterCard' do
    let(:result){ CreditCardValidator.validate(5105105105105106) }
    let(:print_output){  'MasterCard: 5105105105105106 (invalid)' }

    it 'should validate as a invalid MasterCard Credit Card' do
      result.should eql(print_output)
    end
  end
  context 'valid Visa' do
    let(:result){ CreditCardValidator.validate(4111111111111111) }
    let(:print_output){  'VISA: 4111111111111111 (valid)' }
    let(:result_1){ CreditCardValidator.validate(4012888888881881) }
    let(:print_output_1){  'VISA: 4012888888881881 (valid)' }

    it 'should validate as a valid Visa Credit Card' do
      result.should eql(print_output)
    end

    it 'should validate the second result as a valid Visa Credit Card' do
      result_1.should eql(print_output_1)
    end
  end

  context 'invalid Visa' do
    let(:result){ CreditCardValidator.validate(4111111111111) }
    let(:print_output){  'VISA: 4111111111111 (invalid)' }

    it 'should validate as a invalid Visa Credit Card' do
      result.should eql(print_output)
    end
  end

  context 'Unknown payment credit card' do
    let(:result){ CreditCardValidator.validate(9111111111111111) }
    let(:print_output){  'Unknown: 9111111111111111 (invalid)' }

    it 'should validate as an Unknown Credit Card Number' do
      result.should eql(print_output)
    end
  end
end