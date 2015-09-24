require 'spec_helper'
 
describe Book do
before :each do
    @book = Book.new "Title", "Description","Authors","Status" :category
end 
end

describe "#title" do
    it "returns the correct title" do
        @book.title.should eql "Title"
    end
end
describe "#description" do
    it "returns the correct title" do
        @book.title.should eql "Description"
    end
end
describe "#author" do
    it "returns the correct author" do
        @book.author.should eql "Authors"
    end
end
describe "#status" do
    it "returns the correct status" do
        @book.author.should eql "Status"
    end
end

