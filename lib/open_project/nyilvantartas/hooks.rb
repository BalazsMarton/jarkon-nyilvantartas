module OpenProject::Nyilvantartas
  ##
  # Given a hook name as defined in the core the main way to call it is defining
  # a method with the same name in your Hook class (e.g. view_layouts_base_sidebar here).
  #
  # Alternatively you can use the `render_on` helper as shown for the `homescreen_after_links`
  # and the `view_layouts_base_html_head` hooks.
  
  #class Hooks < Redmine::Hook::ViewListener
    # here we render a partial
    #render_on :homescreen_after_links, partial: 'hooks/nyilvantartas/homescreen_after_links'

    # you can use inline partials as well:
    
  #end
  
end