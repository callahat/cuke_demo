Given /^I enter (.*) into google$/ do |search_term|
  visit "http://www.google.com"
  find('[title="Search"]').set 'something'
end

When /^I run the search$/ do
  click_button 'Search'

  find('#resultStats')
  loop while all('.r').size == 0
end

Then /^I see results$/ do
  puts "<b>#{all('h3.r').size}</b> results"
  puts "Standard puts reporting on the results at time of test:"
  puts all('h3.r').map(&:text).join("\n")
end
