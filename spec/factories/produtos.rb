FactoryBot.define do
  factory :produto do
    nome { "Mouse" }
    association :grupodeproduto, factory: :unidade
  end
end
