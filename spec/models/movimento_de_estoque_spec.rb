require 'rails_helper'

RSpec.describe MovimentoDeEstoque, type: :model do
  context 'validações gerais' do
    it { should belong_to(:pessoa).class_name('Pessoa') } 
    it { should belong_to(:operacao).class_name('Pessoa') }
    it { should belong_to(:produto).class_name('Pessoa') }
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:quantidade).is_greater_than_or_equal_to(1).is_less_than_or_equal_to(8) }
  end
end