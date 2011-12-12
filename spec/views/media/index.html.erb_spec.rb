require 'spec_helper'

describe "media/index.html.erb" do
  before(:each) do
    assign(:media, [
      stub_model(Medium,
        :title => "Title",
        :year => 1,
        :category => "Category",
        :comment => "Comment",
        :user => 1,
        :rating => "Rating"
      ),
      stub_model(Medium,
        :title => "Title",
        :year => 1,
        :category => "Category",
        :comment => "Comment",
        :user => 1,
        :rating => "Rating"
      )
    ])
  end

  it "renders a list of media" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
  end
end
