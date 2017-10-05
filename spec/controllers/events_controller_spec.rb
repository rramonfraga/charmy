require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  # describe 'POST /events', sidekiq: :inline do
  #   let(:valid_attributes) do
  #     { name: 'Product Choose', store: 'STORE', user: 'user_id', product: 'product_id' }
  #   end
  #
  #   context 'when the request is valid' do
  #     before { byebug; post '/events', params: valid_attributes }
  #
  #     it 'creates a event' do
  #       expect(json['name']).to eq('Product Choose')
  #     end
  #
  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end
  #
  #   context 'when the request is invalid' do
  #     before { post '/events', params: { foo: 'bar' } }
  #
  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #     end
  #
  #     it 'returns a validation failure message' do
  #       expect(response.body)
  #         .to match(/Validation failed: Created by can't be blank/)
  #     end
  #   end
  # end
end
