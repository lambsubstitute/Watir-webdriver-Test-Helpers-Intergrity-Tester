## methods for working with checkboxes
# get checkbox by class, returns checkbox object
def checkbox_by_class(checkbox_class)
  return @browser.checkbox(:class, cuke_class(checkbox_class))
end

# check checkbox with class exists, returns true or false
def checkbox_by_class_exists(checkbox_class)
  return checkbox_by_class(checkbox_class).exist?
end

#checkbox by class, check the checkbox
def checkbox_by_class_set(checkbox_class)
  checkbox_by_class(checkbox_class).set
end

#checkbox by class, clear the checkbox
def checkbox_by_class_clear(checkbox_class)
  checkbox_by_class(checkbox_class).clear
end

#checkbox by class, is set? returns true or false depending on status of checkbox
def checkbox_by_class_is_set(checkbox_class)
  return checkbox_by_class(checkbox_class).set?
end


##checkbox by id methods
# get checkbox by id, returns checkbox object
def checkbox_by_id(checkbox_id)
  return @browser.checkbox(:id, checkbox_id)
end

#checkbox by id, exists returns true or false
def checkbox_by_id_exists(checkbox_id)
  return checkbox_by_id(checkbox_id).exist?
end

# set the checkbox
def checkbox_by_id_set(checkbox_id)
  checkbox_by_id(checkbox_id).set
end

#checkbox by id, clear the checkbox
def checkbox_by_id_clear(checkbox_id)
  checkbox_by_id(checkbox_id).clear
end

#checkbox by id, is set? returns true or false
def checkbox_by_id_is_set(checkbox_id)
  return checkbox_by_id(checkbox_id).set?
end


#checkbox by value methods
# get check box by value, returns checkbox object
def checkbox_by_value(checkbox_value)
  return @browser.checkbox(:value, checkbox_value)
end

#checkbox by value exists, returns true or false
def checkbox_by_value_exists(checkbox_value)
  return checkbox_by_value(checkbox_value).exist?
end

# set check box by value
def checkbox_by_value_set(checkbox_value)
  checkbox_by_value(checkbox_value).set
end

#checkbox by value, clear
def checkbox_by_value_clear(checkbox_value)
  checkbox_by_value(checkbox_value).clear
end

#checkbox by value, is set? returns true or false
def checkbox_by_value_is_set(checkbox_value)
  return checkbox_by_value(checkbox_value).set?
end
