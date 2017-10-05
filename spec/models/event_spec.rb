require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { described_class.new(attributes) }
  let(:store) { create(:store) }

  context 'with valid attributes' do
    let(:attributes) { { name: 'Anything', store: store } }

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
