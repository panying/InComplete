require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "Testing redirection" do
       #Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	  get posts_path
      response.status.should be(302)
    end
  end
  describe "get /posts/new" do
	it "no picture not allowed" do
	  visit posts_path
	  click_link "Create New Post"
	  fill_in "title", with: "TTT"
	  click_button "Save Post"	  
	  error_message = "Picture can't be blank"
	  page.should have_content(error_message)

	end
  end
end
