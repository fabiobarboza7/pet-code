require 'rails_helper'

RSpec.describe Animal, type: :model do
  context "Person: " do 
    it "should save andorinha if person > 18" do
    	person = Person.create(name: "Fábio", date_of_birth: "1900-11-01")
    	andorinha = AnimalKind.create(kind: "Andorinha")
      animal = Animal.new(name: "tigre", animal_kind_id: andorinha.id, person_id: person.id)
      expect(animal.check_animal_kind).to eq true
    end
  
    it "should save andorinha if person < 18" do
    	person = Person.create(name: "Fábio", date_of_birth: "2015-11-01")
    	andorinha = AnimalKind.create(kind: "Andorinha")
      animal = Animal.new(name: "tigre", animal_kind_id: andorinha.id, person_id: person.id)
      expect(animal.check_animal_kind).to eq false
    end
  
    it "should not save if animal == 'Gato'" do
    	person = Person.create(name: "Antônio", date_of_birth: "2015-11-01")
    	cavalo = AnimalKind.create(kind: "Gato")
      animal = Animal.new(name: "tigre", animal_kind_id: cavalo.id, person_id: person.id)
      expect(animal.check_animal_kind).to eq false
    end
  
    it "should save anyway if animal isn't == Andorinha" do
    	person = Person.create(name: "Fábio", date_of_birth: "2015-11-01")
    	cavalo = AnimalKind.create(kind: "Cavalo")
      animal = Animal.new(name: "tigre", animal_kind_id: cavalo.id, person_id: person.id)
      expect(animal.save).to eq true
    end

    it "should not have more animals if current cost will be > 1000" do
      person = Person.create(name: "Fábio", date_of_birth: "2015-11-01")
      cavalo = AnimalKind.create(kind: "Cavalo")
      animal = Animal.create(name: "tigre", animal_kind_id: cavalo.id, person_id: person.id, monthly_cost: 1001.00)
      expect(animal.check_cost).to eq false
    end

    it "should have more animals if current cost will be < 1000" do
      person = Person.create(name: "Fábio", date_of_birth: "2015-11-01")
      cavalo = AnimalKind.create(kind: "Cavalo")
      animal = Animal.create(name: "tigre", animal_kind_id: cavalo.id, person_id: person.id, monthly_cost: 101.00)
      expect(animal.check_cost).to eq true
    end
  end
end
