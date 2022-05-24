FactoryBot.define do
  factory :post do
    title { 'Título #1' }
    content { 'Título #1' }
    association :user
  end
end
