require 'rails_helper'

RSpec.describe "pessoas/new", type: :view do
  before(:each) do
    assign(:pessoa, Pessoa.new(
      :endereco => "",
      :nome => "",
      :documento => "MyString"
    ))
  end

  it "renders new pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoas_path, "post" do

      assert_select "input[name=?]", "pessoa[endereco]"

      assert_select "input[name=?]", "pessoa[nome]"

      assert_select "input[name=?]", "pessoa[documento]"
    end
  end
end
