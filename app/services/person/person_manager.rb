class Person::PersonManager

  def initialize(url)
    @url = url
  end

  def call
    return if url.blank?

    Person::CreatePersonAndAssociations.new(url).call
  end

  private

  attr_reader :url
end
