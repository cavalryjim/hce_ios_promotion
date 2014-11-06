class RelaxScreen < PM::Screen
  title "Relax"
  
  def on_load
    set_nav_bar_button :right, title: "Done", action: :close_this_screen
  end
  
  
  def close_this_screen
    close
  end
  
end
