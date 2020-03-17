# frozen_string_literal: true

require 'faraday'

class MoviesController < ApplicationController
  def index
    search_params['page'].present? ? make_api_call(search_params['page']) : make_api_call(1)

    parsed_result = JSON.parse(@response.body)
    @total_result = parsed_result['totalResults']
    @total_pages = (@total_result.to_f / 10).ceil
    @movies = parsed_result['Search'].sort_by { |movie| movie['Year'].to_i }.reverse!
  end

  private

  def make_api_call(page)
    @selected_page = page
    @response = request_api(page)
  end

  def search_params
    params.permit(:page)
  end

  def request_api(page)
    url = 'http://www.omdbapi.com/'
    omdb_api_key = Rails.application.credentials[:omdb_api_key]
    Faraday.get(url, { apikey: omdb_api_key, s: 'batman', page: page, type: 'movie' })
  end
end
