class AnimalKindController < ApplicationController

	def create
		@animal_kind = AnimalKind.new(animal_params)
		if @animal_kind.save
			flash[:notice] = "Success save :)"
		else
			flash[:alert] = "Some error, check the fields"
		end
		redirect_to root_path
	end

	private

	def animal_params
		params.require(:animal_kind).permit(:kind)
	end

end
