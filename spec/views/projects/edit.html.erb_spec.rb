require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "MyString",
      :description => "MyText",
      :institution => "MyString",
      :url => "MyString",
      :status => 1,
      :voluntary => nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_institution[name=?]", "project[institution]"

      assert_select "input#project_url[name=?]", "project[url]"

      assert_select "input#project_status[name=?]", "project[status]"

      assert_select "input#project_voluntary_id[name=?]", "project[voluntary_id]"
    end
  end
end
