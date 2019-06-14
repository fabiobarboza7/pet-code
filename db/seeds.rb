# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
AnimalKind.destroy_all
Animal.destroy_all

document = 555555555

Person.create([
	{ name: "Johnny Cash", document: document, date_of_birth: "1932-02-26" },
	{ name: "Sid Vicious", document: document, date_of_birth: "1957-05-10" },
	{ name: "Axl Rose", document: document, date_of_birth: "1962-02-06" },
	{ name: "Joey Ramone", document: document, date_of_birth: "1951-05-19" },
	{ name: "Bruce Dickinson", document: document, date_of_birth: "1958-08-07" },
	{ name: "Kurt Cobain", document: document, date_of_birth: "1967-02-20" },
	{ name: "Elvis Presley", document: document, date_of_birth: "2008-08-17" }
])

persons = Person.all

AnimalKind.create([
	{ kind: "Cavalo"},
	{ kind: "Cachorro"},
	{ kind: "Papagaio"},
	{ kind: "Lhama"},
	{ kind: "Iguana"},
	{ kind: "Ornitorrinco"},
	{ kind: "Andorinha"},
	{ kind: "Gato"}
])

kinds = AnimalKind.all

Animal.create([
	{ name: "Pé de Pano", monthly_cost: 199.99, animal_kind_id: kinds.find(1).id, person_id: persons.find(1).id},
	{ name: "Rex", monthly_cost: 99.99, animal_kind_id: kinds.find(2).id, person_id: persons.find(2).id},
	{ name: "Ajudante do Papai Noel", monthly_cost: 99.99, animal_kind_id: kinds.find(2).id, person_id: persons.find(3).id},
	{ name: "Rex", monthly_cost: 103.99, animal_kind_id: kinds.find(3).id, person_id: persons.find(4).id},
	{ name: "Flora", monthly_cost: 103.99, animal_kind_id: kinds.find(4).id, person_id: persons.find(5).id},
	{ name: "Dino", monthly_cost: 177.99, animal_kind_id: kinds.find(5).id, person_id: persons.find(6).id},
	{ name: "Lassie", monthly_cost: 407.99, animal_kind_id: kinds.find(6).id, person_id: persons.find(7).id},
])

