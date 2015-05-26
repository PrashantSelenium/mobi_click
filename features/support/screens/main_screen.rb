class MainScreen
  include MobiClick

  text(:uicatalog,:name =>'UICatalog')
  text(:textfield,:name=>'Text Fields')
  text_field(:default_text,:xpath=>'//UIAApplication[1]/UIAWindow[2]/UIATableView[1]/UIATableCell[1]/UIATextField[1]')


  def get_UICatalog_text
    uicatalog_text
  end

  def click_UICatalog
    uicatalog
  end

  def verify_UICatalog
    uicatalog?
  end

  def verify_Defaulttextfield
    default_text?
  end

  def click_Defaulttextfield
    default_text
  end

  def get_Defaulttextfield_value
    default_text_text
  end

  def set_Defaulttextfield
    self.default_text='sometext'
  end

  def click_on_textfieldtext
    textfield
  end

end