require 'spec_helper'

describe User do
before :each do
    @User = User.new "Email", "Name","Password","Status" :category
end
end

describe "#email" do
    it "returns the correct email" do
        @user.email.should eql "Email"
    end
end
describe "#name" do
    it "returns the correct name" do
        @user.name.should eql "Name"
    end
end
describe "#password" do
    it "returns the correct password" do
        @user.password.should eql "Password"
    end
end
describe "#status" do
    it "returns the correct status" do
        @user.status.should eql "Status"
    end
end

