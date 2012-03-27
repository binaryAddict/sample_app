require 'spec_helper'

describe "LayoutLinks" do

  before(:each) do
      @base_title = "Ruby on Rails Tutorial Sample App | "
  end

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => @base_title + "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => @base_title + "Contact")
  end
  
  it "should have a About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => @base_title + "About")
  end
  
  it "should have a Contact page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => @base_title + "Help")
  end
  
  it "should have a Contact page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => @base_title + "Sign up")
  end
  
  it 'should have the right links on the layout' do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => @base_title + "About")
    click_link "Contact"
    response.should have_selector('title', :content => @base_title + "Contact")
    click_link "Help"
    response.should have_selector('title', :content => @base_title + "Help")
    click_link "Home"
    response.should have_selector('title', :content => @base_title + "Home")
    click_link "Sign up now!"
    response.should have_selector('title', :content => @base_title + "Sign up")
  end
  
end