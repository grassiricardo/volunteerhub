require 'rails_helper'

RSpec.describe "voluntaries/show", type: :view do
  before(:each) do
    @voluntary = assign(:voluntary, Voluntary.create!(
      :name => "Name",
      :bio => "MyText",
      :age => 2,
      :email => "Email",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
  end
end
