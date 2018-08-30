class Relation < ApplicationRecord
    
    belongs_to :tags
    belongs_to :posts
    belongs_to :comments
    belongs_to :user
    belongs_to :libraries
end
