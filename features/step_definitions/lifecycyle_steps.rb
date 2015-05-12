When(/^I start the server$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the application should be running\.$/) do
  ms=MainScreen.new
  puts ms.get_UICatalog_text
end
