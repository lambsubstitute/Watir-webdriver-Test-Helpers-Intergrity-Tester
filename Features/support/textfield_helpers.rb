##Methods for working with text fields
#text field by class methods
#textfield by class, returns textfield object
def textfield_by_class(textfield_class)
  return @browser.textfield(:class, cuke_class(textfield_class))
end

#textfield by class exists, returns true or false
def textfield_by_class_exists(textfield_class)
  return textfield_by_class(textfield_class).exist?
end

#textfield by class set text, takes text sent to it and enters it in to the textfield with class
def textfield_by_class_set_text(textfield_class, text)
  textfield_by_class(textfield_class).set text
end

#textfield by class clears text
def textfield_by_class_clear_text(textfield_class)
  textfield_by_class(textfield_class).clear
end

def textfield_by_class_value(textfield_class)
  return textfield_by_class(textfield_class).value
end



# get a textfield by id, returns textfield object
def textfield_by_id(id_name)
  return @browser.text_field(:id, id_name)
end

# check textfield exists by id, returns true or false
def textfield_by_id_exists(id_name)
  return textfield_by_id(id_name).exist?
end

# set the text for a textfield by id, returns nothing
def textfield_by_id_set_text(id_name, text)
  textfield_by_id(id_name).set text
end

def textfield_by_id_clear_text(id_name)
  textfield_by_id(id_name).clear
end

def textfield_by_id_get_value(id_name)
  return textfield_by_id(id_name).value
end



##textfield by name methods
#textfield by name, returns textfield object
def textfield_by_name(name)
  return @browser.textfield(:name, name)
end

def textfield_by_name_exists(name)
  textfield_by_name(name)
end


#text field waiting helpers
def link_by_class_wait(link_class)
  link_by_class(link_class).wait_until_present(timeout=@master_timeout)
end

def link_by_text_wait(link_text)
  link_by_text(link_text).wait_until_present(timeout=@master_timeout)
end

def link_by_id_wait(link_id)
  link_by_id(link_id).wait_until_present(timeout=@master_timeout)
end


def button_by_value_wait(button_value)
  button_by_value(button_value).wait_until_present(timeout=@master_timeout)
end

def textfield_by_id_wait(id)
  textfield_by_id(id).wait_until_present(timeout=@master_timeout)
end
