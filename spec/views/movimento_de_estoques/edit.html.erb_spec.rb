require 'rails_helper'

RSpec.describe "movimento_de_estoques/edit", type: :view do
  before(:each) do
    @movimento_de_estoque = assign(:movimento_de_estoque, MovimentoDeEstoque.create!(
      :quantidade => 1,
      :pessoa => "MyString",
      :operacao => "MyString",
      :produto => "MyString"
    ))
  end

  it "renders the edit movimento_de_estoque form" do
    render

    assert_select "form[action=?][method=?]", movimento_de_estoque_path(@movimento_de_estoque), "post" do

      assert_select "input[name=?]", "movimento_de_estoque[quantidade]"

      assert_select "input[name=?]", "movimento_de_estoque[pessoa]"

      assert_select "input[name=?]", "movimento_de_estoque[operacao]"

      assert_select "input[name=?]", "movimento_de_estoque[produto]"
    end
  end
end
