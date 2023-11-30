class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def search
    if params[:query]
      query = params[:query]
      url = "https://maps.googleapis.com/maps/api/place/textsearch/json?location=35.63409893106672%139.7080938092547&radius=90000&query=#{query}&language=en&key=#{ENV['GOOGLE_API_KEY']}"
      uri = URI(url)
      response = Net::HTTP.get_response(uri)
      google_place_data = JSON.parse(response.body)
      @info = google_place_data["results"]
    end
  end
end
