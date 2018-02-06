require_relative '../../lib/nextbiggest'

RSpec.describe NextBiggest do
  context 'Finding the next biggest number with the same digits' do

    describe 'Single Digit Conversions' do
      it 'converts 1 to -1' do
        conversion(1,-1)
      end

      it 'converts 2 to -1' do
        conversion(2,-1)
      end
    end

    describe 'Double Digit Conversions' do
      it 'converts 12 to 21' do
        conversion(12,21)
      end

      it 'converts 11 to -1' do
        conversion(11,-1)
      end

      it 'converts 36 to 63' do
        conversion(36,63)
      end
    end

  end

  private

  def conversion(input, output)
    expect(NextBiggest.convert(input)).to eql(output)
  end
end
