FactoryGirl.define do
  factory :client do
    secret_key { "www.test.com" }
  end
end