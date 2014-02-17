require 'spec_helper'

describe "pacientes/edit" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :fone => "MyString",
      :endereco => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", paciente_path(@paciente), "post" do
      assert_select "input#paciente_nome[name=?]", "paciente[nome]"
      assert_select "input#paciente_fone[name=?]", "paciente[fone]"
      assert_select "input#paciente_endereco[name=?]", "paciente[endereco]"
      assert_select "input#paciente_email[name=?]", "paciente[email]"
    end
  end
end
