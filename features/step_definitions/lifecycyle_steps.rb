include MobiClick


When(/^I start the server$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the application should be running\.$/) do
  ms=MainScreen.new
  puts ms.get_UICatalog_text
  puts ms.verify_UICatalog
  ms.click_UICatalog_element
  #ms.click_UICatalog
  #sleep 5
  MobiClick.scroll_to({:name=>'Steppers',:direction=>'down'})
  #sleep 10
  ms.click_UICatalog
#sleep 10
  ms.click_sliders
  #sleep 10
#MobiClick.swipe("sdf")
  #sleep 10


  #sleep 5
  #ms.click_on_textfieldtext
  #puts ms.verify_Defaulttextfield
  #ms.click_Defaulttextfield
  #ms.set_Defaulttextfield
  #puts ms.get_Defaulttextfield_value

end
