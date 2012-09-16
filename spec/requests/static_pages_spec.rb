require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the right selector" do visit root_path
     page.should have_selector('title', :text => 'SampleApp')
    end 
  
end
  describe "Help page" do
    it "Should have content 'Help'" do visit help_path 
      page.should have_content('Help')
    end
    
    it "Should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', :text => 'Help')
    end
  end
  
  describe "About page" do
    it "Should have content 'About Us'" do visit about_path 
      page.should have_content('About Us')
    end
    
     it "Should have the title 'About us'" do
      visit about_path
      page.should have_selector('title', :text => 'About us')
    end
    
  end
  
  describe "Contact page" do
    it "Should have content 'Contact'" do visit contact_path
      page.should have_content('Contact')
    end
    
     it "Should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => 'Contact')
    end
    
  end

end