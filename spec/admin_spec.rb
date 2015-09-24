require 'spec_helper'
 
describe Admin do
before :each do
    @admin = Admin.new "Email", "Name","Password","Status","Profile" :category
end 
end

describe "#email" do
    it "returns the correct email" do
        @admin.email.should eql "Email"
    end
end
describe "#name" do
    it "returns the correct name" do
        @admin.name.should eql "Name"
    end
end
describe "#password" do
    it "returns the correct password" do
        @admin.password.should eql "Password"
    end
end
describe "#status" do
    it "returns the correct status" do
        @admin.status.should eql "Status"
    end
end
describe "#profile" do
    it "returns the correct profile" do
        @admin.profile.should eql "Profile"
    end
end


