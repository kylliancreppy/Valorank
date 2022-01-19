class Agent < ApplicationRecord
    has_one_attached :photo
    has_many :abilities
end
