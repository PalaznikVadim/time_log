FactoryBot.define do
  # task
  sequence :title do |n|
    "title_#{n}"
  end

  sequence :description do |n|
    "description_#{n}"
  end

  # entry
  sequence :comment do |n|
    "comment_#{n}"
  end

  sequence :time do |n|
    "#{n}h #{n}m"
  end
end