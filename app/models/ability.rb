class Ability < ApplicationRecord
    belongs_to :agent
    has_one_attached :photo
end
