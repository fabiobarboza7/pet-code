class AnimalKind < ApplicationRecord
	has_many :animals

	def which_one
		puts 123123
	end
end
