require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the rigth title" do
      get 'home'
      response.should have_selector("title",
        :content => "Simple App | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the suitable title" do
      get 'contact'
      response.should have_selector("title",
        :content => "Simple App | Contact")
    end
  end

  describe "Get 'About'" do
    it "should be ok" do
      get 'about'
      response.should be_success
    end

    it "should have the supposed title" do
      get 'contact'
      response.should have_selector("title",
        :content => "Simple App | A Propos")
    end
  end

end
