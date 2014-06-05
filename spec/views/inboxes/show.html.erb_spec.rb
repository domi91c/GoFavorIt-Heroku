require 'rails_helper'

RSpec.describe "inboxes/show", :type => :view do
  before(:each) do
    @inbox = assign(:inbox, Inbox.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
