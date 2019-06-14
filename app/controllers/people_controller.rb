class PeopleController < ApplicationController
  def index
  	@people = Person.all
  	@animal_kinds = AnimalKind.all
  	@animal = Animal.new
  	@animal_kind = AnimalKind.new
  	@person = Person.new
  end

	def create
		@person = Person.new(person_params)
		if @person.save
			flash[:notice] = "Success save :)"
		else
			flash[:alert] = "Some error, check the fields"
		end
		redirect_to root_path
	end

	private

	def person_params
		params.require(:person).permit(:name, :document, :date_of_birth)
	end
end
