Given(/^the input "(.*?)"$/) do |input|
	@input = input
end

When(/^the calculator is run$/) do
	@output = `ruby calc.rb #{@input}`
	raise('Command failed!') unless $?.success?
end

Then(/^the output shoud be "(.*?)"$/) do |expected_output|
	@output.should	== expected_output
end