class Vehicles::VehiclesManager

  def initialize(url)
    @url = url
  end

  def call
    return if url.blank?

    Vehicles::CreateVehicles.new(url).call
  end

  private

  attr_reader :url
end
