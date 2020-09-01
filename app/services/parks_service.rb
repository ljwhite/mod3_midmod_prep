class ParksService

  def find_parks_in_state(state)
    response = conn.get("/api/v1/parks?stateCode=#{state}")
    json = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  private

  def conn
    @conn ||= Faraday.new(url: "https://developer.nps.gov") do |faraday|
    faraday.headers["X-API-KEY"] = ENV['PARKS_FINDER_API-KEY']
    end
  end
end
