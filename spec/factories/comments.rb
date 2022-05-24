FactoryBot.define do
  factory :comment do
    content { 'Comentário #1' }
    association :user
    association :post
  end
end
