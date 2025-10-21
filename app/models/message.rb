class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true, length: { maximum: 500 }

    scope :custom_display, -> { order(:created_at).last(20) }
end
