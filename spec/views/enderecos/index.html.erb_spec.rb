require 'rails_helper'

RSpec.describe "enderecos/index", type: :view do
  before(:each) do
    assign(:enderecos, [
      Endereco.create!(
        :nome => "Nome",
        :cep => "Cep",
        :bairro => "Bairro"
      ),
      Endereco.create!(
        :nome => "Nome",
        :cep => "Cep",
        :bairro => "Bairro"
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
  end
end
