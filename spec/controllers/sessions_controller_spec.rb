require 'spec_helper'

describe SessionsController do

  describe "GET 'new_user'" do
    it "returns http success" do
      get 'new_user'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end
