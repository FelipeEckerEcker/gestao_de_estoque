FactoryBot.define do
  factory :movimento_de_estoque do
    data { "2019-11-11 23:46:16" }
    quantidade { 1 }
    association :pessoa, factory: :pessoa
    association :operacao, factory: :operacao
    association :produto, factory: :produto
  end
end
