require 'spec_helper'

describe WorkbenchController do

  describe "GET 'lightbox'" do
    it "returns http success" do
      get 'lightbox'
      response.should be_success
    end
  end

  describe "GET 'slideshow'" do
    it "returns http success" do
      get 'slideshow'
      response.should be_success
    end
  end

  describe "GET 'tables'" do
    it "returns http success" do
      get 'tables'
      response.should be_success
    end
  end

  describe "GET 'buttons'" do
    it "returns http success" do
      get 'buttons'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
