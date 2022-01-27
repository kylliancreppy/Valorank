class Agent < ActiveRecord::Base
    has_one_attached :photo
    has_many :abilities
end
