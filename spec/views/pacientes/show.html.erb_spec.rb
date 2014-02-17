require 'spec_helper'

describe "pacientes/show" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "Nome",
      :fone => "Fone",
      :endereco => "Endereco",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Fone/)
    rendered.should match(/Endereco/)
    rendered.should match(/Email/)
  end
end
