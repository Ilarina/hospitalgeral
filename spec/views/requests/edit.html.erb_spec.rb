require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :plano => "MyString",
      :dataexame => "MyString",
      :dataentrega => "MyString",
      :laudo => "MyString",
      :exame => nil,
      :consultation => nil
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", request_path(@request), "post" do
      assert_select "input#request_plano[name=?]", "request[plano]"
      assert_select "input#request_dataexame[name=?]", "request[dataexame]"
      assert_select "input#request_dataentrega[name=?]", "request[dataentrega]"
      assert_select "input#request_laudo[name=?]", "request[laudo]"
      assert_select "input#request_exame[name=?]", "request[exame]"
      assert_select "input#request_consultation[name=?]", "request[consultation]"
    end
  end
end
