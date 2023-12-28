class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :entries
  has_many :assignments
  has_many :users, through: :assignments

  aasm do
    state :unviewed, initial: true
    state :approved
    state :declined

    event :approve do
      transitions from: :unviewed, to: :approved
    end

    event :decline do
      transitions from: :unviewed, to: :declined
    end
  end
end
