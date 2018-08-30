class Post < ApplicationRecord
    
    def self.search(search)
        where("author LIKE ? OR title LIKE ? OR tag LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
    
    has_many :relations
    has_many :comments
    
    
end
