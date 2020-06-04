class Hiragana < ApplicationRecord
    has_many :tests, dependent: :destroy
end
