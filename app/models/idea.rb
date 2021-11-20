class Idea < ApplicationRecord 
    validates :title, presence: true
    validates :sub, presence: true
    validates :description, presence: true
    validates :target, presence: true
    validates :b2bc, presence: true
    validates :help, presence: true
    validates :keywords, presence: true

    has_many :comments

end
