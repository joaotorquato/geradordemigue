FactoryGirl.define do
  sequence(:text) { |n| "#{n} migué" }
  factory :excuse do
    text
  end
end
