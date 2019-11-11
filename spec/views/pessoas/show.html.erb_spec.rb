require 'rails_helper'

RSpec.describe "pessoas/show", type: :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
      :endereco => "",
      :nome => "",
      :documento => "Documento"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Documento/)
  end
end
