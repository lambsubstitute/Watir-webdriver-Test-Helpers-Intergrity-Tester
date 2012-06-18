## methods for working with dropdowns
# get a select by class, returns dropdown object
def select_by_class(class_name)
  @browser.select_list(:class, cuke_class(class_name))
end

# check dropdown exists, returns true or false
def select_by_class_exists(class_name)
  return select_by_class(class_name).exist?
end

#set the value in the select list
def select_by_class_set_value(class_name, value)
  select_by_class(class_name).select value
end

#select the selected option by its class
def select_by_class_get_selected(class_name)
  return select_by_class(class_name).selected_option
end

#clear the select list selected options
def select_by_class_clear(class_name)
  select_by_class(class_name).clear
end

#get the index of the selected item
def select_by_class_get_index(class_name)
  return select_by_class(class_name).selected_index
end

## gets all the options text for a select list
def select_by_class_get_options(class_name)
  i = 0
  options = Array.new
  select_list = select_by_class(class_name)
  while i < select_list.length
    options[i] = select_list[i].text
    i = i+ 1
  end
  return options
end




# get select list from id, returns select list object
def select_by_id(id_name)
  @browser.select_list(:id, id_name)
end

def select_by_id_set_value(id_name, value)
  select_by_id(id_name).select value
end

def select_by_id_exists(id_name)
  return select_by_id(id_name).exist?
end

#select the selected option by its id
def select_by_id_get_selected(id_name)
  return select_by_id(id_name).selected_option
end

#clear the select list selected options
def select_by_id_clear(id_name)
  select_by_id(id_name).clear
end

#get the index of the selected item
def select_by_id_get_index(id_name)
  return select_by_id(id_name).selected_index
end

## gets all the options text for a select list
def select_by_id_get_options(id_name)
  i = 0
  options = Array.new
  select_list = select_by_id(id_name)
  while i < select_list.length
    options[i] = select_list[i].text
    i = i+ 1
  end
  return options
end
