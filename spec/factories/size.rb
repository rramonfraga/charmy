FactoryGirl.define do
  factory :size do
    category { %w(shirt jeans shoes).sample }
    symbol { %w(XS S M L XL).sample }
    number { %w(36 38 40 42 44).sample.to_i }
  end
end
