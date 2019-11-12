FactoryBot.define do
  factory :grupode_produto do
    nome { "Grupo de mouse" }
    association :produto, factory: :produto
  end
end
