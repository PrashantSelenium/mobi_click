class MainScreen
  include MobiClick

  text(:uicatalog,:name =>'UICatalog')

  def get_UICatalog_text
    uicatalog
  end
end