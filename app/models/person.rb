class Person < ApplicationRecord
	has_many :animals

	def animals_sum(person)
		person.animals.sum(:monthly_cost).to_f
	end
	
end
