FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    cpf      "392.838.982-80"
    gender   "male"
    city     "Sorocaba"
    state    "SP"
    password "foobar"
    password_confirmation "foobar"
  end
end