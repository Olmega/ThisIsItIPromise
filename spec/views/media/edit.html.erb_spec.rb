require 'spec_helper'

describe "media/edit.html.erb" do
  before(:each) do
    @medium = assign(:medium, stub_model(Medium,
      :title => "MyString",
      :year => 1,
      :category => "MyString",
      :comment => "MyString",
      :user => 1,
      :rating => "MyString"
    ))
  end

  it "renders the edit medium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_path(@medium), :method => "post" do
      assert_select "input#medium_title", :name => "medium[title]"
      assert_select "input#medium_year", :name => "medium[year]"
      assert_select "input#medium_category", :name => "medium[category]"
      assert_select "input#medium_comment", :name => "medium[comment]"
      assert_select "input#medium_user", :name => "medium[user]"
      assert_select "input#medium_rating", :name => "medium[rating]"
    end
  end
end
