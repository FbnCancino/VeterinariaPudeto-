class Proveedor < ApplicationRecord
  belongs_to :admin
  validates :nombre, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :codigo, presence: true ,numericality: true
  validates :mail, presence: true 
  validates :telefono, presence: true ,numericality: true
end
