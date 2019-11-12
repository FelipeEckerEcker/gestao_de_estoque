require 'rails_helper'

RSpec.describe Operacao, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:tipo) }
    it { is_expected.to allow_values('venda', 'compra', 'devolucao_de_venda', 'devolucao_de_compra').for(:tipo) }
    it { should define_enum_for(:tipo) }
  end
end
