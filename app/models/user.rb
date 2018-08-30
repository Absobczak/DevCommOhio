class User < ApplicationRecord
    def self.create_with_omniauth(auth)
        create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
        user.image = auth["info"]["image"]  
        end
    end
    
    has_many :relations
    has_many :posts, through: :relations
    has_many :comments, through: :relations
    has_many :libraries, through: :relations
    
end
