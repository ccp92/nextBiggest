require_relative '../../lib/nextbiggest'

RSpec.describe NextBiggest do
  context 'Finding the next biggest number with the same digits' do
    describe 'Single Digit Conversions' do
      it 'returns -1' do
        expect(NextBiggest.convert('')).to eql(-1)
      end
    end
  end
end
