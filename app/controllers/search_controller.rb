require 'net/http'

class SearchController < ApplicationController
  def recipe
    query = params[:q]
    app_id = "836b3fdd"
    app_key = "b8aa318b23ac94a010fea46a6e908503"
    search_url = "https://api.edamam.com/search?q=#{query}&app_id=#{app_id}&app_key=#{app_key}"
    uri = URI(search_url)
    string_response = Net::HTTP.get(uri)
    byebug
    render json: string_response
    # can access everything after a ?
    # example search/recipe?q=stuff
  end
end
