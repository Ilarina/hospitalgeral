require 'spec_helper'

describe "medicos/show" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "Nome",
      :fone => "Fone",
      :endereco => "Endereco",
      :email => "Email",
      :crm => "Crm"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Fone/)
    rendered.should match(/Endereco/)
    rendered.should match(/Email/)
    rendered.should match(/Crm/)
  end
end
