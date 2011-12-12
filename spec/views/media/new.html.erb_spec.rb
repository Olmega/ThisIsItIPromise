require 'spec_helper'

describe "media/new.html.erb" do
  before(:each) do
    assign(:medium, stub_model(Medium,
      :title => "MyString",
      :year => 1,
      :category => "MyString",
      :comment => "MyString",
      :user => 1,
      :rating => "MyString"
    ).as_new_record)
  end

  it "renders new medium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_path, :method => "post" do
      assert_select "input#medium_title", :name => "medium[title]"
      assert_select "input#medium_year", :name => "medium[year]"
      assert_select "input#medium_category", :name => "medium[category]"
      assert_select "input#medium_comment", :name => "medium[comment]"
      assert_select "input#medium_user", :name => "medium[user]"
      assert_select "input#medium_rating", :name => "medium[rating]"
    end
  end
end
