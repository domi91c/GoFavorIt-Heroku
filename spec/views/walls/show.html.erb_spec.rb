require 'rails_helper'

RSpec.describe "walls/show", :type => :view do
  before(:each) do
    @wall = assign(:wall, Wall.create!(
      :bio => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
