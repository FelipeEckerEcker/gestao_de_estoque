FactoryBot.define do
  factory :pessoa do
    nome { "Felipe Ecker" }
    documento { "07649264971" }
    endereco { "Av. Cristo Rei" }
    cidade { "Francisco Beltrão/PR" }
    estado { "PR" }
  end
end
