require 'spec_helper'

describe "requests/new" do
  before(:each) do
    assign(:request, stub_model(Request,
      :plano => "MyString",
      :dataexame => "MyString",
      :dataentrega => "MyString",
      :laudo => "MyString",
      :exame => nil,
      :consultation => nil
    ).as_new_record)
  end

  it "renders new request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requests_path, "post" do
      assert_select "input#request_plano[name=?]", "request[plano]"
      assert_select "input#request_dataexame[name=?]", "request[dataexame]"
      assert_select "input#request_dataentrega[name=?]", "request[dataentrega]"
      assert_select "input#request_laudo[name=?]", "request[laudo]"
      assert_select "input#request_exame[name=?]", "request[exame]"
      assert_select "input#request_consultation[name=?]", "request[consultation]"
    end
  end
end
