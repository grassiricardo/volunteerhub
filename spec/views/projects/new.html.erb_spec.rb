require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :description => "MyText",
      :institution => "MyString",
      :url => "MyString",
      :status => 1,
      :voluntary => nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_institution[name=?]", "project[institution]"

      assert_select "input#project_url[name=?]", "project[url]"

      assert_select "input#project_status[name=?]", "project[status]"

      assert_select "input#project_voluntary_id[name=?]", "project[voluntary_id]"
    end
  end
end
