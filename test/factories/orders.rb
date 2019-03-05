FactoryBot.define do
  factory :order do
    delivery_address { "MyString" }
    delivery_type { "MyString" }
    payment_type { "MyString" }
    user { nil }
    cart { nil }
  end
end
