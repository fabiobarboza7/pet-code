# Backend Ruby - Challenge

Esse é um desafio sugerido por uma empresa bacana na area de petshop :)

### Things todo:

  - Pessoas tem animais, e animais tem tipos.
  - Uma pessoa tem os atributos nome, documento e data de nascimento.
  - Um animal tem  os atributos nome, custo mensal e tipo.

## Regras

  - Pessoas podem ter vários animais
  - Pessoas devem ter mais de 18 anos para ter andorinhas
  - Pessoas que tenham nome começando com a letra "A" não podem ter animais do tipo Gato
  - Pessoas que já tiverem custos com animais acima de 1000 não podem ter mais animais

## Questões

As questões devem ser respondidas com queries do `ActiveRecord`.
Inclua os trechos de código que respondem as perguntas abaixo:

### Qual é o custo médio dos animais do tipo cachorro?

    cachorro = AnimalKind.find_by("kind = ?", "Cachorro")
    Animal.where(animal_kind: cachorro).average(:monthly_cost).to_f

### Quantos cachorros existem no sistema?

    cachorro = AnimalKind.find_by("kind = ?", "Cachorro")
    Animal.where(animal_kind: cachorro).count

### Qual o nome dos donos dos cachorros (Array de nomes)

    arr = []
    cachorro = AnimalKind.find_by("kind = ?", "Cachorro")
    Animal.where(animal_kind: cachorro).each do |dog|
      arr << dog.person.name
    end
    puts arr

### Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)

    Person.joins(:animals).select("people.*, SUM(animals.monthly_cost)").group("people.id").order('sum desc')

    !Esta query eu tive um pouquinho de dificuldade, deu uma olhada na net.

### Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?

    Person.all.map do |person|
      person.animals.sum("monthly_cost * 3").to_f
    end