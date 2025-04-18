# frozen_string_literal: true

# Destroy and create fresh Metrics data
Metric.destroy_all

categories = %w[Sales Traffic conversions]

(Time.zone.today - 90.days).upto(Time.zone.today).each do |date|
  categories.each do |category|
    Metric.create!(name: category.downcase, value: rand(100..1000), date: date, category: category)
  end
end

puts 'Metrics created successfully'

# Destroy and create fresh Cards data
Card.destroy_all

statuses = %w[Active Pending Completed]
priorities = %w[High Medium Low]

20.times do |i|
  Card.create!(title: "Task #{i + 1}", description: "its description for task #{i + 1}", status: statuses.sample,
               priority: priorities.sample)
end

puts 'Cards created successfully'
