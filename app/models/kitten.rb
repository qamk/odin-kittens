class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, presence: true
  validates :age, :cuteness, numericality: { only_integer: true }
  validates :cuteness, numericality: { in: 1..100 }
end
