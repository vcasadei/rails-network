FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"} 
    cpf      "392.838.982-80"
    gender   "male"
    city     "Sorocaba"
    state    "SP"
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :post do
    content "Lorem ipsum"
    user
  end
end