Given /^I have entered (\d+(?:.\d+)?) into the calculator$/ do |number|
  @numbers ||= []
  @numbers << number.to_f
end

When /^I add$/ do
  @sum = @numbers.inject(0){|sum, number| sum += number}
end

Then /^the result should be (\d+(?:.\d+)?) on the screen$/ do |number|
  assert_equal number.to_f, @sum
end
