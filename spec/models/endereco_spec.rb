require 'rails_helper'

RSpec.describe Endereco, type: :model do
  it { should belong_to(:cidade).class_name('Pessoa') }    

  it { should validate_presence_of(:nome) }
  it { should validate_presence_of(:cep) }
  it { should validate_presence_of(:bairro) }


end
