class ParksController < ApplicationController
  def index
    # state = params[:state]
    # @parks = call(state)


    #
    # def conn
    #     @conn ||= Faraday.new(url: "https://developer.nps.gov/api/v1") do |faraday|
    #       farday.headers["X-API-KEY"] = ENV['PARKS_FINDER_API-KEY']
    #   end
    # end


    # response = conn.get("/api/v1/parks?stateCode=#{state}")
    # json = JSON.parse(response.body, symbolize_names: true)
    # @parks = json[:data].map do |park|
    #   Park.new(park)
    # end
    search_results = SearchResult.new
    @parks = search_results.parks(params[:state])
  end
end
