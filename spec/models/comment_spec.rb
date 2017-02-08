require 'rails_helper'

describe Comment do
  
  it "is not valid" do
    expect(Comment.new(body: "Awesome!", rating: "nil")).not_to be_valid
  end
  
end