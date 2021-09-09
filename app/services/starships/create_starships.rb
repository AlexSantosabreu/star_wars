class Starships::CreateStarships
  def initialize(url)
    @url = url
  end

  def call
    begin
      starships = Starships::GetStarshipsService.new(url).call

      Starships::PersistStarships.new(starships["results"]).call

      Starships::StarshipsManager.new(starships["next"]).call unless starships["next"].blank?

    rescue StandardError
      Rails.logger.error("Failed to create starships")
    end
  end

  private

  attr_reader :url
end
