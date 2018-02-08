require_relative '../../lib/nextbiggest'

RSpec.describe NextBiggest do
  context 'Finding the next biggest number with the same digits' do

    describe 'Single Digit Conversions' do
      it 'converts 1 to -1' do
        conversion(1, -1)
      end

      it 'converts 2 to -1' do
        conversion(2, -1)
      end
    end

    describe 'Double Digit Conversions' do
      it 'converts 12 to 21' do
        conversion(12, 21)
      end

      it 'converts 11 to -1' do
        conversion(11, -1)
      end

      it 'converts 36 to 63' do
        conversion(36, 63)
      end
    end

    describe 'Triple Digit Conversions' do
      it 'converts 123 to 132' do
        conversion(123, 132)
      end
    end

    describe 'Quadruple Digit Conversions' do
      it 'converts 1234 to 1243' do
        conversion(1234, 1243)
      end
    end
  end

  private

  def conversion(input, output)
    expect(NextBiggest.convert(input)).to eql(output)
  end
end
