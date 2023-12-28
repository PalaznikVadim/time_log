class User < ApplicationRecord
  validates :phone, phone: true

  has_many :assignments
  has_many :tasks, through: :assignments
end
