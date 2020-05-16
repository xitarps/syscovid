FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, '0')}@example.com" }
    password { '123456' }
    country { 'BR' }
    age { 13 }
    sequence(:name) { |n| "user-test-#{n} da silva" }
    gender { 1 }
    user_zip_code { '01001000' }
  end
end
