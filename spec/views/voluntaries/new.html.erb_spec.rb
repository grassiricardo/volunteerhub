require 'rails_helper'

RSpec.describe "voluntaries/new", type: :view do
  before(:each) do
    assign(:voluntary, Voluntary.new(
      :name => "MyString",
      :bio => "MyText",
      :age => 1,
      :email => "MyString",
      :user => nil
    ))
  end

  it "renders new voluntary form" do
    render

    assert_select "form[action=?][method=?]", voluntaries_path, "post" do

      assert_select "input#voluntary_name[name=?]", "voluntary[name]"

      assert_select "textarea#voluntary_bio[name=?]", "voluntary[bio]"

      assert_select "input#voluntary_age[name=?]", "voluntary[age]"

      assert_select "input#voluntary_email[name=?]", "voluntary[email]"

      assert_select "input#voluntary_user_id[name=?]", "voluntary[user_id]"
    end
  end
end
