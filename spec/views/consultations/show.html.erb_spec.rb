require 'spec_helper'

describe "consultations/show" do
  before(:each) do
    @consultation = assign(:consultation, stub_model(Consultation,
      :data => "Data",
      :hora => "Hora",
      :medico => nil,
      :paciente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
