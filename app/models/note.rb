class Note < ApplicationRecord
    belongs_to :user, strict_loading: true
    validates :comment, presence: true
end
