class Person::CreatePersonAndAssociations
  def initialize(url)
    @url = url
  end

  def call
    begin

      person = Person::GetPersonService.new(url).call

      Person::PersistPerson.new(person["results"]).call

      Person::PersonManager.new(person["next"]).call unless person["next"].blank?

    rescue StandardError => e
      Rails.logger.error("Failed to create person")
    end
  end

  private

  attr_reader :url
end
