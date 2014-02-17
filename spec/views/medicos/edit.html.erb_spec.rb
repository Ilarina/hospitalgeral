require 'spec_helper'

describe "medicos/edit" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "MyString",
      :fone => "MyString",
      :endereco => "MyString",
      :email => "MyString",
      :crm => "MyString"
    ))
  end

  it "renders the edit medico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", medico_path(@medico), "post" do
      assert_select "input#medico_nome[name=?]", "medico[nome]"
      assert_select "input#medico_fone[name=?]", "medico[fone]"
      assert_select "input#medico_endereco[name=?]", "medico[endereco]"
      assert_select "input#medico_email[name=?]", "medico[email]"
      assert_select "input#medico_crm[name=?]", "medico[crm]"
    end
  end
end
