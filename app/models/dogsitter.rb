class Dogsitter < ApplicationRecord
    has_many :strolls, dependent: :destroy
    has_many :dogs, through: :strolls

end
