require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'sitemap'" do
    it "returns http success" do
      get 'sitemap'
      response.should be_success
    end
  end

end
