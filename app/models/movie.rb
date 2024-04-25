class Movie < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :director, presence: true
    validates :price, presence: true
    validates :release, presence: true

    has_one_attached :picture
end
