## methods for working with links ##
##These are finished and fully tested


##link by class methods##
# get a link by class, returns link object if found
def link_by_class(class_name)
  return @browser.link(:class, cuke_class(class_name))
end

# check if the link exists by class, returns true or false
def link_by_class_exists(class_name)
  return link_by_class(class_name).exist?
end

#clicks the link with class
def link_by_class_click(class_name)
  link_by_class(class_name).click
end

#gets the href for the link with class
def link_by_class_get_href(class_name)
  return link_by_class(class_name).href
end

#gets the text for the clink with class
def link_by_class_get_text(class_name)
  return link_by_class(class_name).text
end


##link by id methods##
# get link by id, returns link object
def link_by_id(link_id)
  return @browser.link(:id, link_id)
end

# check if link exists by its id, returns true or false
def link_by_id_exists(link_id)
  return link_by_id(link_id).exist?
end

#clikc the link with id
def link_by_id_click(link_id)
  link_by_id(link_id).click
end

#get the text for the link with id
def link_by_id_get_text(link_id)
  return link_by_id(link_id).text
end

#get the href for the link with id
def link_by_id_get_href(link_id)
  return link_by_id(link_id).href
end


##link by text methods##
# get link by text, returns link object if found
def link_by_text(link_text)
  return @browser.link(:text, link_text)
end

#check if link exists by text, returns true or false
def link_by_text_exists(link_text)
  return link_by_text(link_text).exist?
end

#click the link with text
def link_by_text_click(link_text)
  link_by_text(link_text).click
end

#gets the href for the link with text
def link_by_text_get_href(link_text)
  return link_by_text(link_text).href
end


##link by href methods##
# get link by href, returns link object
def link_by_href(link_href)
  return @browser.link(:href, link_href)
end

#link by href exists, returns true of false
def link_by_href_exists(link_href)
  return link_by_href(link_href).exist?
end

#click the link by href
def link_by_href_click(link_href)
  link_by_href(link_href).click
end

#link by href return text
def link_by_href_get_text(link_href)
  return link_by_href(link_href).text
end