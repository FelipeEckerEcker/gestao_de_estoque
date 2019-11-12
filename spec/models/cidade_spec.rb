require 'rails_helper'

RSpec.describe Cidade, type: :model do
  it { should belong_to(:endereco).class_name('Pessoa') }    

  it { should validate_presence_of(:nome) }
end
