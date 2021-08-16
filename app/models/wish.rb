class Wish < ApplicationRecord
  validates :number, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
end
