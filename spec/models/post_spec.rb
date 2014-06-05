require 'spec_helper'

describe Post, "new" do
  it "does nothing on new" do
    activity = Post.new(title: "a cool post")
    activity.title.should == "a cool post"
  end
end