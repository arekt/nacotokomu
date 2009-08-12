# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
# http://woss.name/2006/11/25/multi-select-boxes-in-your-rails-view/
def collection_select_multiple(object, method,
                                 collection, value_method, text_method,
                                 options = {}, html_options = {})
    real_method = "#{method.to_s.singularize}_ids".to_sym
    collection_select(
      object, real_method,
      collection, value_method, text_method,
      options,
      html_options.merge({
        :multiple => true,
        :name => "#{object}[#{real_method}][]"
      })
    )
  end
    

def collection_select_multiple_contactgroups(object, method,
                                            options = {}, html_options = {})
    collection_select_multiple(
      object, method,
      Contactgroup.find(:all), :id, :alias,
      options, html_options
    )
    end 

def collection_select_multiple_contacts(object, method,
                                            options = {}, html_options = {})
    collection_select_multiple(
      object, method,
      Contact.find(:all), :id, :alias,
      options, html_options
    )
    end 

def links_to_actions_old(item=nil)
    a = "("
    a << link_to('Show', {:action => 'show', :id => item}) + " | " 
    a << link_to('Edit', {:action => 'edit', :id => item}) + " | "
    a << link_to('Destroy', {:action => 'destroy', :id => item}) #this is quite not working
    a << " )"
    end

def links_to_actions(object,method_str)


    a = "("
    a << link_to('Show', "#{object}") + " | "
    a << link_to('Edit', "edit_#{method_str}(#{object})") + " | "
    a << link_to('Destroy', "#{object}", :confirm => 'Are you sure?', :object => :delete) 
    a << " )"
    end
end
