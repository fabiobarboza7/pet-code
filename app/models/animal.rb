class Animal < ApplicationRecord
  belongs_to :animal_kind
  belongs_to :person
end
