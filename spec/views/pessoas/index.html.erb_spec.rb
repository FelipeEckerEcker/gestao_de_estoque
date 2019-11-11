require 'rails_helper'

RSpec.describe "pessoas/index", type: :view do
  before(:each) do
    assign(:pessoas, [
      Pessoa.create!(
        :endereco => "",
        :nome => "",
        :documento => "Documento"
      ),
      Pessoa.create!(
        :endereco => "",
        :nome => "",
        :documento => "Documento"
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Documento".to_s, :count => 2
  end
end
