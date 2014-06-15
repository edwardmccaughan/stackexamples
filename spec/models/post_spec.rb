require 'spec_helper'

describe Post, "new" do
  it "does nothing on new" do
    post = Post.new(title: "a cool post")
    post.title.should == "a cool post"
  end

  it "does nothing on save" do
    post = FactoryGirl.create(:post)
    post.title.should be_present
  end
end