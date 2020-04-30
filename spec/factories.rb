require 'faker'
FactoryBot.define do
  factory :user, aliases: [:author, :commenter] do
    email { Faker::Internet.email }
    password { 123456 }
    password_confirmation { 123456 }
  end

  factory :post do
    user
    title { "How to read a book effectively" }
    body { Faker::Lorem.words(number: 251).join(' ') }
    image_url { Faker::LoremFlickr.image(size: "750x300", search_terms: ['sports', 'technology']) }
  end

  factory :comment do
    user
    body { "Great article!" }
  end
end