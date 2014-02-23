require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :plano => "Plano",
        :dataexame => "Dataexame",
        :dataentrega => "Dataentrega",
        :laudo => "Laudo",
        :exame => nil,
        :consultation => nil
      ),
      stub_model(Request,
        :plano => "Plano",
        :dataexame => "Dataexame",
        :dataentrega => "Dataentrega",
        :laudo => "Laudo",
        :exame => nil,
        :consultation => nil
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Plano".to_s, :count => 2
    assert_select "tr>td", :text => "Dataexame".to_s, :count => 2
    assert_select "tr>td", :text => "Dataentrega".to_s, :count => 2
    assert_select "tr>td", :text => "Laudo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
