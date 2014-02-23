require 'spec_helper'

describe "consultations/new" do
  before(:each) do
    assign(:consultation, stub_model(Consultation,
      :data => "MyString",
      :hora => "MyString",
      :medico => nil,
      :paciente => nil
    ).as_new_record)
  end

  it "renders new consultation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consultations_path, "post" do
      assert_select "input#consultation_data[name=?]", "consultation[data]"
      assert_select "input#consultation_hora[name=?]", "consultation[hora]"
      assert_select "input#consultation_medico[name=?]", "consultation[medico]"
      assert_select "input#consultation_paciente[name=?]", "consultation[paciente]"
    end
  end
end
