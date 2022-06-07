require 'rails_helper'

RSpec.describe Services::Paginator do
 subject { described_class.paginate(array, page, items) }
  context 'test paginator' do
   let(:array) { [1, 2 , 3 ,4, 5] }
   let(:page) { 1 }
   let(:items) { 3 }
   it 'test' do
      expect(subject).to eq([1, 2, 3])
   end
 end
end