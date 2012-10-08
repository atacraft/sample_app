require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Simple App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the rigth title" do
      get 'home'
      response.should have_selector("title",
        :content => @base_title + " | Accueil")
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
        :content => @base_title + " | Contact")
    end
  end

  describe "Get 'About'" do
    it "should be ok" do
      get 'about'
      response.should be_success
    end

    it "should have the supposed title" do
      get 'about'
      response.should have_selector("title",
        :content => @base_title + " | A Propos")
    end
  end

  describe "Get 'Help'" do
    it "should be ok" do
      get 'Help'
      response.should be_success
    end

    it "should have the supposed title" do
      get 'Help'
      response.should have_selector("title",
        :content => @base_title + " | Aide")
    end
  end

end
