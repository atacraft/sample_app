require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
    	get 'new'
    	response.should have_selcetor ("title", :content => "inscription")
  end

end
