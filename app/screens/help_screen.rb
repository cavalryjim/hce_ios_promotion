class HelpScreen < PM::WebScreen
  title "Help"
  
  def on_load
    set_nav_bar_button :right, title: "Done", action: :close_help_screen
  end
  
  def content
    NSURL.URLWithString('https://hce-app.herokuapp.com/help')
  end
  
  def load_failed
    UIAlert.alloc.initWithTitle('Failed to load',
      message: 'The help content failed to load.',
      delegate: nil,
      cancelButtonTitle: 'Ok',
      otherButtonTitles: nil
    ).show
  end
  
  def close_help_screen
    close
  end
end