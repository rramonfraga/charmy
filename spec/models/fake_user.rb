require 'rails_helper'

RSpec.describe FakeUser, type: :model do
  subject { described_class.new(attributes) }
  let(:size) { create(:size) }
  let(:style) { create(:style) }
  let(:attributes) do
    { gender: 'female', color: 'grey', size_ids: [size.id], style_ids: [style.id] }
  end

  context 'with valid attributes' do
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

  describe '#sizes' do
    it 'returns the sizes' do
      expect(subject.sizes).to eq([size])
    end
  end

  describe '#styles' do
    it 'returns the styles' do
      expect(subject.styles).to eq([style])
    end
  end
end
