require 'spec_helper'

describe ContactController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'photoshoot'" do
    it "returns http success" do
      get 'photoshoot'
      response.should be_success
    end
  end

  describe "GET 'mailinglist'" do
    it "returns http success" do
      get 'mailinglist'
      response.should be_success
    end
  end

end
