class Planets::GetPlanetsService
  def initialize(url)
    @url = url
  end

  def call
    Swapi::Client.new(url).fetch
  end

  private

  attr_reader :url
end
