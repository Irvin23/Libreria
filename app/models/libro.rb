class Libro < ApplicationRecord
    belongs_to :autor
    belongs_to :genero
end
