class HomeScreen < PM::TableScreen
  title "HCE Sickle Cell"
  
  def on_load
    set_nav_bar_button :right, title: "Help", action: :open_help_screen
    #set_nav_bar_button :right, system_item: :add, action: :open_add_zaggle_form
  end

  def will_appear
    #update_table_data
    set_attributes self.view, {
      background_color: hex_color("#FFFFFF")
    }
    
    set_toolbar_items [{
        title: "Button ",
        action: :some_action
      }, {
        system_item: :flexible_space
      }, {
        title: "Another Button",
        action: :some_action

      }]
  end
  
  def open_help_screen
    open_modal HelpScreen.new(nav_bar: true)
  end
  
  def some_action
    
  end
  
  def open_relax_screen
    open_modal RelaxScreen.new(nav_bar: true)
  end
  
  def open_hydrate_screen
    open_modal HydrateScreen.new(nav_bar: true)
  end
  
  def table_data
        
    [{
        title: "Take a challenge",
        cells: [
          { title: "Relaxation", action: :open_relax_screen },
          { title: "Hydrate", action: :open_hydrate_screen }
        ]
    }]
  end
  
end