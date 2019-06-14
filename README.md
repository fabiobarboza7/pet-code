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

    Person.all.map do |person|
      person.animals.order(monthly_cost: :desc)
    end

### Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?

    Person.all.map do |person|
      person.animals.sum("monthly_cost * 3").to_f
    end

# Entrega do projeto

- Crie uma aplicação Rails nova para executar o desafio. Pode escolher o banco de dados de preferência.
- Ao finalizar, suba a sua proposta para o projeto que você criou no GitHub. Exemplo: https://github.com/seuNome/pet-code;
- Envie-nos o link do projeto. Exemplo: https://github.com/seuNome/test-backend-ruby.git
- Pronto! Basta aguardar o nosso RH entrar em contato. Entramos em contato rapidinho ;)
