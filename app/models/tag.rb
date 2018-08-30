class Tag < ApplicationRecord
    
    has_many :relations
    has_many :posts, through: :relations
    has_many :libraries, through: :relations
    
end
