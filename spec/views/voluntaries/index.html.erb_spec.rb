require 'rails_helper'

RSpec.describe "voluntaries/index", type: :view do
  before(:each) do
    assign(:voluntaries, [
      Voluntary.create!(
        :name => "Name",
        :bio => "MyText",
        :age => 2,
        :email => "Email",
        :user => nil
      ),
      Voluntary.create!(
        :name => "Name",
        :bio => "MyText",
        :age => 2,
        :email => "Email",
        :user => nil
      )
    ])
  end

  it "renders a list of voluntaries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
