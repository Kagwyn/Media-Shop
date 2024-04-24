class Book < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :price, presence: true
    validates :release, presence: true

    has_one_attached :picture
end
