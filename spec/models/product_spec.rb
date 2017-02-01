require 'rails_helper'

describe Product do
	context "When the product has comments"


	before do 
		@product = Product.create!(name: "race bike")
		@user = User.create!(email: "test@test.com", password: "testtest")
		@product.comments.create!(rating: 1, user: @user, body: "Awful bike")
		@product.comments.create!(rating: 3, user: @user, body: "Not bad")
		@product.comments.create!(rating: 5, user: @user, body: "good")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "should not return valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end

