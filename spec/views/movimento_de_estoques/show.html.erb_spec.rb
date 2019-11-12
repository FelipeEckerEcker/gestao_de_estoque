require 'rails_helper'

RSpec.describe "movimento_de_estoques/show", type: :view do
  before(:each) do
    @movimento_de_estoque = assign(:movimento_de_estoque, MovimentoDeEstoque.create!(
      :quantidade => 2,
      :pessoa => "Pessoa",
      :operacao => "Operacao",
      :produto => "Produto"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Pessoa/)
    expect(rendered).to match(/Operacao/)
    expect(rendered).to match(/Produto/)
  end
end
