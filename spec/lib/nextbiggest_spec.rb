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

      it 'converts 333 to -1' do
        conversion(333, -1)
      end

      it 'converts 736 to 763' do
        conversion(736, 763)
      end

      it 'converts 365 to 536' do
        conversion(365, 536)
      end
    end

    describe 'Quadruple Digit Conversions' do
      it 'converts 1234 to 1243' do
        conversion(1234, 1243)
      end

      it 'converts 9999 to -1' do
        conversion(9999, -1)
      end

      it 'converts 4938 to 4983' do
        conversion(4938, 4983)
      end
    end

    describe 'Big Conversions' do
      it 'converts 12345 to 12354' do
        conversion(12345, 12354)
      end

      it 'converts 21365 to 21536' do
        conversion(21365, 21536)
      end
    end
  end

  private

  def conversion(input, output)
    expect(NextBiggest.convert(input)).to eql(output)
  end
end
