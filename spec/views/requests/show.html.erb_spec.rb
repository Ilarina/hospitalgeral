require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :plano => "Plano",
      :dataexame => "Dataexame",
      :dataentrega => "Dataentrega",
      :laudo => "Laudo",
      :exame => nil,
      :consultation => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Plano/)
    rendered.should match(/Dataexame/)
    rendered.should match(/Dataentrega/)
    rendered.should match(/Laudo/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
