require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { described_class.new(attributes) }

  context 'with valid attributes' do
    let(:attributes) { build(:product).attributes }

    it 'is valid' do
      expect(subject).to be_valid
    end
  end

  context 'without valid attributes' do
    let(:attributes) { {} }

    it 'is not valid' do
      expect(subject).to_not be_valid
    end
  end
end
