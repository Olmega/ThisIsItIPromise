require 'spec_helper'

describe "media/show.html.erb" do
  before(:each) do
    @medium = assign(:medium, stub_model(Medium,
      :title => "Title",
      :year => 1,
      :category => "Category",
      :comment => "Comment",
      :user => 1,
      :rating => "Rating"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rating/)
  end
end
