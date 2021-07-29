class Dog < ApplicationRecord
    has_many :strolls, dependent: :destroy
    has_many :dogsitters, through: :strolls
end
