## methods for working with divs ##
# get a div by class, returns div object
def div_by_class(class_name)
  return @browser.div(:class, cuke_class(class_name))
end

# check if div exists by class, returns true or false
def div_by_class_exists(class_name)
  return div_by_class(class_name).exist?
end

def div_by_class_click(class_name)
  div_by_class(class_name).click
end

def div_by_class_get_text(class_name)
  return div_by_class(class_name).text
end


# get a div by id, returns boolean
def div_by_id_exists(id_name)
  return div_by_id(id_name).exist?
end

# get a div by id, returns div object
def div_by_id(id_name)
  return @browser.div(:id, id_name)
end

#get a div by id and click what is in there, if not just one thing this will click the first clickable thing it fines
def div_by_id_click(id_name)
  div_by_id(id_name).click
end

#div by id, gets the text in the div
def div_by_id_get_text(id_name)
  return div_by_id(id_name)
end



def div_by_text(div_text)
  return @browser.div(:text, div_text)
end

# get a div by id, returns boolean
def div_by_text_exists(div_text)
  return div_by_text(div_text).exist?
end

# ge the div with the text and click it
def div_by_text_click(div_text)
  div_by_text(div_text).click
end
