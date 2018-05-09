require 'rails_helper'

describe "all destinations", :type => :request do
  let!(:destinations) { FactoryBot.create_list(:destination, 15)}

  before { get '/destinations' }

  it 'returns all destinations' do
    expect(JSON.parse(response.body).size).to eq 15
  end

  it 'status code 200' do
    expect(response).to have_http_status(:success)
  end
end
