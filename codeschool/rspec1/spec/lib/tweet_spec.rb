require "spec_helper"
require "tweet"

describe Tweet do
	it "has a status" do
		tweet = Tweet.new({:status => "uoo"})
		expect tweet.status == "uoo"
	end
end

