class MigsController < ApplicationController
  def index
    
    response = HTTP.headers("X-eBirdApiToken" => Rails.application.credentials.bird_api[:api_key]).get("https://api.ebird.org/v2/data/obs/US-TN/recent/notable")
   
    render json: response.parse(:json)
   
  end
end
