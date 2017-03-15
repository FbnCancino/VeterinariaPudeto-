class Paciente < ApplicationRecord
  belongs_to :cliente

  validates :nombre, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :sexo, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :edad, presence: true ,numericality: true
  validates :tipo, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
end
