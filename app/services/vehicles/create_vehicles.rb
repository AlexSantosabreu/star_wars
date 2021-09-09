class Vehicles::CreateVehicles
  def initialize(url)
    @url = url
  end

  def call
    begin
      vehicles = Vehicles::GetVehiclesService.new(url).call

      Vehicles::PersistVehicles.new(vehicles["results"]).call

      Vehicles::VehiclesManager.new(vehicles["next"]).call unless vehicles["next"].blank?

    rescue StandardError => e
      Rails.logger.error("Failed to create vehicles")
    end
  end

  private

  attr_reader :url
end
