require 'rails_helper'

RSpec.describe "walls/edit", :type => :view do
  before(:each) do
    @wall = assign(:wall, Wall.create!(
      :bio => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit wall form" do
    render

    assert_select "form[action=?][method=?]", wall_path(@wall), "post" do

      assert_select "textarea#wall_bio[name=?]", "wall[bio]"

      assert_select "input#wall_user_id[name=?]", "wall[user_id]"
    end
  end
end
