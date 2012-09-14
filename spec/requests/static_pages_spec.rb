require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the right selector" do visit '/static_pages/home'
     page.should have_selector('title', :text => 'SampleApp')
    end 
  
end
  describe "Help page" do
    it "Should have content 'Help'" do visit '/static_pages/help' 
      page.should have_content('Help')
    end
    
    it "Should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Help')
    end
  end
  
  describe "About page" do
    it "Should have content 'About Us'" do visit '/static_pages/about' 
      page.should have_content('About Us')
    end
    
     it "Should have the title 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'About us')
    end
    
  end

end