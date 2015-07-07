Given /^I enter (.*) into google$/ do |search_term|
  @browser.goto "http://www.google.com"
  @browser.text_field(:title => 'Search').set "something"
end

When /^I run the search$/ do
  @browser.button(:type => 'submit').when_present.click

  Watir::Wait.until{ @browser.div(:id => "resultStats").exists? and @browser.h3s(:class => "r").map(&:text).size > 0}
end

Then /^I see results$/ do
  puts "<b>#{@browser.h3s(:class => "r").size}</b> results"
  puts "Standard puts reporting on the results at time of test:"
  puts @browser.h3s(:class => "r").map(&:text).join("\n")
end
