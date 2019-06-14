class PeopleController < ApplicationController
  def index
  	@people = Person.all
  	@animal_kinds = AnimalKind.all
  	@animal = Animal.new
  	@animal_kind = AnimalKind.new
  end
end
