FactoryBot.define do
  factory :user, aliases: [:author, :commenter] do
    email { "test@test.com" }
    password { 123456 }
    password_confirmation { 123456 }
  end

  factory :post do
    user
    title { "How to read a book effectively" }
    body { "There are five steps involved." }
  end

  factory :comment do
    user
    body { "Great article!" }
  end
end