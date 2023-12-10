require 'rails_helper'

RSpec.describe 'ContentsController', type: :request do
  describe 'GET #index' do
    it 'returns a success response' do
      get '/fuga/contents'
      expect(response).to be_successful
    end
  end
end
