class Veterinario < ApplicationRecord
  belongs_to :admin
  belongs_to :consulta

  validates :nombre, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :rut, presence: true ,numericality: true
  validates :telefono, presence: true ,numericality: true
end
