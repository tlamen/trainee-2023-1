FactoryBot.define do
  factory :post_category do
    post { build(:post) }
    category { build(:category) }
  end
end
