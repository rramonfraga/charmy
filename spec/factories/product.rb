FactoryGirl.define do
  factory :product do
    name { %w(shirt jeans shoes).sample }
    code { Random.rand(11) }
    category { %w(shirt jeans shoes).sample }
    color { %w(red blue green orange).sample }
    position { %w(A1 A2 B1 B2).sample }
    gender { %w(male female).sample }
    material { %w(cottom nylon).sample }
    size { create(:size) }
  end
end
