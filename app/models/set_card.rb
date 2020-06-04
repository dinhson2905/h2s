class SetCard < ApplicationRecord
  belongs_to :user
  has_many :flask_cards, dependent: :destroy
end
