require 'rails_helper'

RSpec.describe FakeUser, type: :model do
  subject { described_class.new(attributes) }
  let(:size) { create(:size) }
  let(:style) { create(:style) }

  context 'with valid attributes' do
    let(:attributes) do
      { gender: 'female', color: 'grey', size_ids: [size.id], style_ids: [style.id] }
    end
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
