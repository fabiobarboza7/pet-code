class Animal < ApplicationRecord
  belongs_to :animal_kind
  belongs_to :person
  before_save :check_animal_kind

  def check_animal_kind
  	case self.animal_kind.kind
  	when "Andorinha"
  		check_age_for_bird
  	when "Gato"
  		check_name
  	else
  		true
  	end	
  end

  def check_cost
  	self.person.animals.sum(:monthly_cost).to_f <= 1000.00 ? true : false
  end

  private

  def check_age_for_bird
		(self.person.date_of_birth + 18.years) < Date.today ? true : false
  end

  def check_name
  	self.person.name.first.downcase === "a" ? false : true
  end

end
