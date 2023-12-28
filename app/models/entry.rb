require_relative '../validations/time_validation'

class Entry < ApplicationRecord
  belongs_to :task

  validates :time, presence: true, time_format: true
end
