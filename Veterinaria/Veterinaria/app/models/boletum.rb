class Boletum < ApplicationRecord
  belongs_to :proveedor
  belongs_to :admin
  belongs_to :cliente
  belongs_to :consulta
end
