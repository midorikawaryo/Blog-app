class Blog < ApplicationRecord
    validates :title, presence: true
    validates :title,:content, length: { in: 1..140 }
    belongs_to :user
end
