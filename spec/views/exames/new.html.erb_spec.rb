require 'spec_helper'

describe "exames/new" do
  before(:each) do
    assign(:exame, stub_model(Exame,
      :descricao => "MyString",
      :valor => "MyString",
      :observacao => "MyString"
    ).as_new_record)
  end

  it "renders new exame form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exames_path, "post" do
      assert_select "input#exame_descricao[name=?]", "exame[descricao]"
      assert_select "input#exame_valor[name=?]", "exame[valor]"
      assert_select "input#exame_observacao[name=?]", "exame[observacao]"
    end
  end
end
