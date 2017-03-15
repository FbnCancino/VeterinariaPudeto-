class Admin < ApplicationRecord
  validates :nombre, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :rut, presence: true ,numericality: true
  validates :mail, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :telefono, presence: true ,numericality: true
end
