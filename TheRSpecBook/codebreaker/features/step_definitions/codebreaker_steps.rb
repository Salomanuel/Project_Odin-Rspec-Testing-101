class DoubleOutput
	def messages
		@messages ||= []
	end
	def puts(message)
		messages << message
	end
end
def double_output
	@output ||= DoubleOutput.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
	game = Codebreaker::Game.new(double_output)
	game.start
end

Then /^I should see "([^"]*)"$/ do |message|
	expect(double_output.messages).to include(message)
end