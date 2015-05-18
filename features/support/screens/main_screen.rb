class MainScreen
  include MobiClick

  text(:uicatalog,:name =>'UICatalog')

  def get_UICatalog_text
    uicatalog_text
  end

  def click_UICatalog
    uicatalog
  end

  def verify_UICatalog
    uicatalog?
  end

end