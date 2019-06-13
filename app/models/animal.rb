class Animal < ApplicationRecord
  belongs_to :animal_kind
  belongs_to :person
  before_save :check_age

  def check_age
  	person = self.person
	  (person.date_of_birth + 18.years) > Date.today ? true : false
  end

end
