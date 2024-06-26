# frozen_string_literal: true

require './db/seeds/arrays'

User.find_or_create_by(email: 'admin@example.com') do |user|
  user.username = 'Dasha Admin'
  user.password = 'password'
  user.role = 1
end

10.times.map do |index|
  User.find_or_create_by(email: "user_#{index}@example.com") do |user|
    user.username = Faker::Internet.username
    user.password = 'password'
  end
rescue ActiveRecord::RecordInvalid => e
  Rails.logger.debug e.message
end

Tag.find_each(&:destroy)

TAGS.each do |name|
  Tag.find_or_create_by(
    tag_name: name
  )
end

Language.find_each(&:destroy)

LANGUAGES.each do |name|
  Language.find_or_create_by(
    language_name: name
  )
end

Category.find_each(&:destroy)

CATEGORIES.each do |name|
  Category.find_or_create_by(
    category_name: name
  )
end

Speaker.find_each(&:destroy)

SPEAKERS.each do |fio|
  Speaker.find_or_create_by(
    speaker_fio: fio
  )
end

Mark.find_or_create_by(
  user: User.first,
  video: Video.first,
  digit: 1
)

Mark.find_or_create_by(
  user: User.second,
  video: Video.first,
  digit: 1
)

Mark.find_or_create_by(
  user: User.third,
  video: Video.first,
  digit: 1
)

Mark.find_or_create_by(
  user: User.first,
  video: Video.second,
  digit: 5
)
Mark.find_or_create_by(
  user: User.second,
  video: Video.second,
  digit: 5
)
Mark.find_or_create_by(
  user: User.third,
  video: Video.second,
  digit: 5
)
