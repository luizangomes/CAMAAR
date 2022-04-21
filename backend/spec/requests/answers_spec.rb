require 'rails_helper'

RSpec.describe "Answers", type: :request do
  describe 'GET /index' do
    it 'returns all posts' do
      get '/answers/id'
      expect(json.size).to eq(1000)
    end

    it 'returns status code 200' do
      get '/answers/id'
      expect(response).to have_http_status(:success)
    end
  end
end
