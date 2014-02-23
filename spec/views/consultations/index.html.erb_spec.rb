require 'spec_helper'

describe "consultations/index" do
  before(:each) do
    assign(:consultations, [
      stub_model(Consultation,
        :data => "Data",
        :hora => "Hora",
        :medico => nil,
        :paciente => nil
      ),
      stub_model(Consultation,
        :data => "Data",
        :hora => "Hora",
        :medico => nil,
        :paciente => nil
      )
    ])
  end

  it "renders a list of consultations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
