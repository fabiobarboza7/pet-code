class AnimalsController < ApplicationController

	def create
		@animal = Animal.new(animal_params)
		if @animal.save!
			flash[:notice] = "Success save :)"
		else
			flash[:alert] = "Some error, check the fields"
		end
		redirect_to root_path
	end

	private

	def animal_params
		params.require(:animal).permit(:name, :monthly_cost, :animal_kind_id, :person_id)
	end

end
