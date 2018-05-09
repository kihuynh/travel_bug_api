require 'rails_helper'

describe "post a destination", :type => :request do
  before do
    post '/destinations', params: { :country => 'France', :city => 'Paris', :description => 'Omelette au fromage', :best_coffee => 'french press' }
  end

  it 'returns country name' do
    expect(JSON.parse(response.body)['country']).to eq('France')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
