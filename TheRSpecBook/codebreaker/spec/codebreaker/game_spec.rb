require 'spec_helper'

module Codebreaker
	describe Game do
		describe "#start" do
			let(:output) 	{ double('output').as_null_object }
			let(:game)		{ Game.new(output) }
			after(:each) 	{ game.start }
			it "sends a welcome message" do
				expect(output).to receive(:puts).with("Welcome to Codebreaker!")
			end
			it "prompts for the first guess" do
				expect(output).to receive(:puts).with("Enter guess:")
			end
		end
	end
end
