require 'spec_helper'

describe "exames/show" do
  before(:each) do
    @exame = assign(:exame, stub_model(Exame,
      :descricao => "Descricao",
      :valor => "Valor",
      :observacao => "Observacao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    rendered.should match(/Valor/)
    rendered.should match(/Observacao/)
  end
end
