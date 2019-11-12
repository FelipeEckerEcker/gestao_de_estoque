require 'rails_helper'

RSpec.describe "enderecos/show", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      :nome => "Nome",
      :cep => "Cep",
      :bairro => "Bairro"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Bairro/)
  end
end
