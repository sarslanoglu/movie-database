# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET index' do
    it 'should return movies index' do
      VCR.use_cassette 'fixtures/vcr_cassettes/batman_movies.yml' do
        get :index

        expect(response).to be_successful
      end
    end
  end
end
