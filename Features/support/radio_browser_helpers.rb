## methods for working with radioes
# get radio by class, returns radio object
def radio_by_class(radio_class)
  return @browser.radio(:class, cuke_class(radio_class))
end

# check radio with class exists, returns true or false
def radio_by_class_exists(radio_class)
  return radio_by_class(radio_class).exist?
end

#radio by class, check the radio
def radio_by_class_set(radio_class)
  radio_by_class(radio_class).set
end

#radio by class, clear the radio
def radio_by_class_clear(radio_class)
  radio_by_class(radio_class).clear
end

#radio by class, is set? returns true or false depending on status of radio
def radio_by_class_is_set(radio_class)
  return radio_by_class(radio_class).set?
end


##radio by id methods
# get radio by id, returns radio object
def radio_by_id(radio_id)
  return @browser.radio(:id, radio_id)
end

#radio by id, exists returns true or false
def radio_by_id_exists(radio_id)
  return radio_by_id(radio_id).exist?
end

# set the radio
def radio_by_id_set(radio_id)
  radio_by_id(radio_id).set
end

#radio by id, clear the radio
def radio_by_id_clear(radio_id)
  radio_by_id(radio_id).clear
end

#radio by id, is set? returns true or false
def radio_by_id_is_set(radio_id)
  return radio_by_id(radio_id).set?
end


#radio by value methods
# get check box by value, returns radio object
def radio_by_value(radio_value)
  return @browser.radio(:value, radio_value)
end

#radio by value exists, returns true or false
def radio_by_value_exists(radio_value)
  return radio_by_value(radio_value).exist?
end

# set check box by value
def radio_by_value_set(radio_value)
  radio_by_value(radio_value).set
end

#radio by value, clear
def radio_by_value_clear(radio_value)
  radio_by_value(radio_value).clear
end

#radio by value, is set? returns true or false
def radio_by_value_is_set(radio_value)
  return radio_by_value(radio_value).set?
end