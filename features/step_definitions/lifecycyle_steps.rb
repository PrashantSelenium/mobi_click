When(/^I start the server$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the application should be running\.$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  puts "Verifying text on the catalog page"
  puts "Actual : #{$driver.find_element(:name,'UICatalog').text()} -- Expected : 'UICatalog'"
 fail unless $driver.find_element(:name,'UICatalog').text().eql? 'UICatalog'
end
