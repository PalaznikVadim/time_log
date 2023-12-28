require_relative '../validations/time_format_validator'

class Entry < ApplicationRecord
  belongs_to :task

  validates :time, presence: true, time_format: true
end
