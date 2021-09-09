class Starships::StarshipsManager

  def initialize(url)
    @url = url
  end

  def call
    return if url.blank?

    Starships::CreateStarships.new(url).call
  end

  private

  attr_reader :url
end
