require 'rails_helper'

RSpec.describe "walls/index", :type => :view do
  before(:each) do
    assign(:walls, [
      Wall.create!(
        :bio => "MyText",
        :user_id => 1
      ),
      Wall.create!(
        :bio => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of walls" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
