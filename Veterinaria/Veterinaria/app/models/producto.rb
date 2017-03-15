class Producto < ApplicationRecord
  belongs_to :proveedor
  validates :nombre, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :codigo, presence: true ,numericality: true
  validates :tipo, presence: true ,format: { with: /\A[a-zA-Z]+\z/}
  validates :precio, presence: true ,numericality: true

 end
