Before('@firefox') do
  @browser = Watir::Browser.new :firefox
end

After('@firefox') do
  @browser.close
end