FactoryBot.define do
  factory :operacao, class: 'Pessoa' do
    descricao { "Vamos comprar mais produtos" }
    tipo { :operacao }
  end

  factory :outra_operacao, class: 'Pessoa' do
    descricao { "Vamos comprar mais produtos ainda" }
    tipo { :operacao }
  end
end
