class Produto < ApplicationRecord
  belongs_to :departamento
  validates :quantidade, :preco, presence: true
  validates :nome, length: { minimum: 4 }
end
