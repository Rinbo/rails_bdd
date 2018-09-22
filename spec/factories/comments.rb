FactoryBot.define do
  factory :comment do
    name { "MyString" }
    body { "MyText" }
    email { "MyString" }
    article { nil }
  end
end
