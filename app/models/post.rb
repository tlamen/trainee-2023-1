class Post < ApplicationRecord
    validates :title, presence: :true
    validates :username_id, numericality: { greater_than: 0 }

    has_many :post_categories
end
