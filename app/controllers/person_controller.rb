class PersonController < ApplicationController
  before_action :set_person, only: [:show]

  def index
    @pagy, @person = pagy(Person.all)
  end

  def show; end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :birth_year, :gender)
  end
end
