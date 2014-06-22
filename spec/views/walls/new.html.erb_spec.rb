require 'rails_helper'

RSpec.describe "walls/new", :type => :view do
  before(:each) do
    assign(:wall, Wall.new(
      :bio => "MyText",
      :user_id => 1
    ))
  end

  it "renders new wall form" do
    render

    assert_select "form[action=?][method=?]", walls_path, "post" do

      assert_select "textarea#wall_bio[name=?]", "wall[bio]"

      assert_select "input#wall_user_id[name=?]", "wall[user_id]"
    end
  end
end
