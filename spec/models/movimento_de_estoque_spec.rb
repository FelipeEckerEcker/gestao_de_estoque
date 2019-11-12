require 'rails_helper'

RSpec.describe MovimentoDeEstoque, type: :model do
  context 'validações gerais' do
    it { should belong_to(:pessoa).class_name('Pessoa') } 
    it { should belong_to(:operacao).class_name('Pessoa') }
    it { should belong_to(:produto).class_name('Pessoa') }
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:quantidade).is_greater_than_or_equal_to(1).is_less_than_or_equal_to(8) }
  end

  context 'ao informar a pessoa' do
    let(:endereco) { FactoryBot.create(:endereco) }
    let(:cidade) { FactoryBot.create(:cidade) }
    let!(:estado) { FactoryBot.create(:estado) }
  end

  context 'ao informar a operacao' do
    let(:tipo) { FactoryBot.create(:tipo) }

    context 'duas vezes no mesmo tipo' do    
      let(:tipo_repetido) { FactoryBot.build(:operacao, tipo: tipo, 
                                                  operacao: produto.operacao) } 
      it 'deve validar' do
        expect(tipo_repetido).to_not be_valid
      end
    end
  end

  context 'ao informar o produto' do
    let(:grupodeproduto) { FactoryBot.create(:grupodeproduto) }
    let(:unidade) { FactoryBot.create(:unidade) }    
  end
end
