require 'rails_helper'

RSpec.describe Size, type: :model do
  subject { described_class.new(attributes) }

  context 'with valid attributes' do
    let(:attributes) { build(:size).attributes }

    it 'is valid' do
      expect(subject).to be_valid
    end
  end

  context 'without attributes' do
    let(:attributes) { {} }

    it 'is also valid' do
      expect(subject).to be_valid
    end
  end
end
