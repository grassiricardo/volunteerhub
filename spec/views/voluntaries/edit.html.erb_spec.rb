require 'rails_helper'

RSpec.describe "voluntaries/edit", type: :view do
  before(:each) do
    @voluntary = assign(:voluntary, Voluntary.create!(
      :name => "MyString",
      :bio => "MyText",
      :age => 1,
      :email => "MyString",
      :user => nil
    ))
  end

  it "renders the edit voluntary form" do
    render

    assert_select "form[action=?][method=?]", voluntary_path(@voluntary), "post" do

      assert_select "input#voluntary_name[name=?]", "voluntary[name]"

      assert_select "textarea#voluntary_bio[name=?]", "voluntary[bio]"

      assert_select "input#voluntary_age[name=?]", "voluntary[age]"

      assert_select "input#voluntary_email[name=?]", "voluntary[email]"

      assert_select "input#voluntary_user_id[name=?]", "voluntary[user_id]"
    end
  end
end
