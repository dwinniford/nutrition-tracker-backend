require 'net/http'

class SearchController < ApplicationController
  def recipe
    query = params[:q]
    app_id = Rails.application.credentials.dig(:edamam, :app_id)
    app_key = Rails.application.credentials.dig(:edamam, :app_key)
    search_url = "https://api.edamam.com/search?q=#{query}&app_id=#{app_id}&app_key=#{app_key}"
    uri = URI(search_url)
    string_response = Net::HTTP.get(uri)
    render json: string_response
  end
end
