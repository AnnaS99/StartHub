class Comment < ApplicationRecord

    validates :email, presence: true
    validates :text, presence: true
    validates :name, presence: true
    belongs_to :idea
end
