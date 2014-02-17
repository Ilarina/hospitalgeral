require 'spec_helper'

describe "exames/index" do
  before(:each) do
    assign(:exames, [
      stub_model(Exame,
        :descricao => "Descricao",
        :valor => "Valor",
        :observacao => "Observacao"
      ),
      stub_model(Exame,
        :descricao => "Descricao",
        :valor => "Valor",
        :observacao => "Observacao"
      )
    ])
  end

  it "renders a list of exames" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Valor".to_s, :count => 2
    assert_select "tr>td", :text => "Observacao".to_s, :count => 2
  end
end
