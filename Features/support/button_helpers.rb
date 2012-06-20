###METHODS FOR WORKING WITH BUTTONS

##button by class methods
#button by class, returns the button object if its available
def button_by_class(button_class)
  #if @browser.button(:class, cuke_class(button_class)).exist?
  # puts @browser.button(:class, cuke_class(button_class)).exist?
  # puts @browser.button(:class, button_class).exist?
  return @browser.button(:class, button_class)
  #else
  #  button_in_form = @browser.form(:class, "TEST_BUTTON_FORM")
  #  return button_in_form.button(:class, cuke_class(button_class))
  #end
end

#button by class exists, returns true or false
def button_by_class_exists(button_class)
  return button_by_class(button_class).exist?
end

#click the button with class
def button_by_class_click(button_class)
  button_by_class(button_class).focus
  button_by_class(button_class).click
end

#button by class get text
def button_by_class_get_text(button_class)
  return button_by_class(button_class).text
end

#button by class get value
def button_by_class_get_value(button_class)
  return button_by_class(button_class).value
end

#button by class, get name
def button_by_class_get_name(button_class)
  return button_by_class(button_class).name
end


##button by id methods
##button by id, returns the button object if available
def button_by_id(button_id)
  return @browser.button(:id, button_id)
end

#button by id exists?, returns true of false
def button_by_id_exists(button_id)
  return button_by_id(button_id).exist?
end

#click the button by id
def button_by_id_click(button_id)
  button_by_id(button_id).focus
  button_by_id(button_id).click
end

#button by id, get text
def button_by_id_get_text(button_id)
  return button_by_id(button_id).text
end

#button by id, get value
def button_by_id_get_value(button_id)
  return button_by_id(button_id).value
end

#button by id, get name
def button_by_id_get_name(button_id)
  return button_by_id(button_id).name
end


##button by value methods
##button by value, returns the button object by the value
def button_by_value(button_value)
  return @browser.button(:text, button_value)
end

#button_by value exists, returns true or false
def button_by_value_exists(button_value)
  return button_by_value(button_value).exist?
end

#click the button by value
def button_by_value_click(button_value)
  button_by_value(button_value).focus
  button_by_value(button_value).click
end

#button by value, get text
def button_by_value_get_text(button_value)
  return button_by_value(button_value).text
end

#button by value, get name
def button_by_value_get_name(button_value)
  return button_by_value(button_value).name
end


##button by name methods
#button by name, returns the button object by name
def button_by_name(button_name)
  return @browser.button(:name, button_name)
end

#button by name exists, returns true or false
def button_by_name_exists(button_name)
  return button_by_name(button_name).exist?
end

#button by name, click
def button_by_name_click(button_name)
  button_by_name(button_name).focus
  button_by_name(button_name).click
end
#button by name, get text
def button_by_name_get_text(button_name)
  return button_by_name(button_name).text
end

#button by name, get value
def button_by_name_get_value(button_name)
  return button_by_name(button_name).value
end



#button by text methods
#button by text, returns the button object
def button_by_text(button_text)
  return @browser.button(:text, button_text)
end

#button by text exists, returns true or false
def button_by_text_exists(button_text)
  return button_by_text(button_text).exist?
end

def button_by_text_click(button_text)
  button_by_text(button_text).click
end

#button by text, get value
def button_by_text_get_value(button_text)
  return button_by_name(button_text).value
end

#button by text, get name
def button_by_text_get_name(button_text)
  return button_by_text(button_text).name
end