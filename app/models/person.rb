class Person < ApplicationRecord
	has_many :animals

	def animals_sum(person)
		person.animals.sum(:monthly_cost).to_f
	end

	def animals_name(person)
		person.animals.map {|animal| animal.name}
	end
	
end
