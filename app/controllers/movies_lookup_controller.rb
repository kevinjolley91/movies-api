require "net/http"

class MoviesLookupController < ApplicationController
  def index
    begin
      url = URI.parse("https://api.themoviedb.org/3/search/movie?query=John+Wick&api_key=#{ENV["MOVIE_API_KEY"]}")
      req = Net::HTTP::Get.new(url.to_s)
      res = Net::HTTP.start(url.host, url.port, use_ssl: url.scheme == "https") do |http|
        http.request(req)
      end

      if res.is_a?(Net::HTTPSuccess)
        @movies = JSON.parse(res.body)
        @movies["results"].sort_by! { |movie| movie["title"] }
        render json: @movies
      else
        render json: { error: "API request failed with status code: #{res.code}" }, status: :unprocessable_entity
      end
    rescue StandardError => e
      render json: { error: "An error occurred: #{e.message}" }, status: :unprocessable_entity
    end
  end
end
