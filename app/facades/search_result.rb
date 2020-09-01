class SearchResult

  def parks(state)
    json = ParksService.new.find_parks_in_state(state)

    @parks = json.map do |park_data|
      Park.new(park_data)
    end
  end
end
