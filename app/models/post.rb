class Post < ApplicationRecord
    belongs_to :user
    has_many :post_comment, -> { order "created_at DESC"}
end
