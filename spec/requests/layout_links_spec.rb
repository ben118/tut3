require 'spec_helper'

describe "LayoutLinks" do

	it "should have a Home page at /" do
		get '/'
 		response.should have_selector('title', :content => "Home")
  	end
  
    it "should have a Contact page at /contact" do
		get '/contact'
 		response.should have_selector('title', :content => "Contact")
  	end
  	
  	it "should have a About page at /about" do
		get '/'
 		response.should have_selector('title', :key => "About")
  	end
  	
  	it "should have a Help page at /help" do
		get '/'
 		response.should have_selector('title', :key => "Help")
  	end
  
end