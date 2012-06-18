## methods for working with headers
#methods for checking H1 headres
#H1 headers, returns H1 object by class
def h1_by_class(h_class)
  return @browser.h1(:class, h_class)
end

#h1 by with class exists, returns true or false
def h1_by_class_exists(h_class)
  return h1_by_class(h.class).exist?
end

#h1 by id
def h1_by_id(h_id)
  return @browser.h1(:id, h_id)
end

#h1 by id exists
def h1_by_id_exists(h_id)
  return h1_by_id(h_id).exist?
end

#h1 by text
def h1_by_text(h_text)
  return @browser.h1(:text, h_text)
end

#h1 by text exists
def h1_by_text_exists(h_text)
  return h1_by_text(h_text).exist?
end

def h1_by_id(h_id)
  return @browser.h1(id, h_id)
end
# check if H2 element exists via class, returns true or false
def h1_by_id_exists(h1_id)
  return h1_by_id(h1_id).exist?
end



def h2_by_text(h_text)
  return @browser.h2(:text, h_text)
end

# check if H2 header exists via its text, returns true or false
def h2_by_text_exists(text)
  return h2_by_text(text).exist?
end

def h2_by_class(h_class)
  return @browser.h2(:class, h_class)
end
# check if H2 element exists via class, returns true or false
def h2_by_class_exists(h2_class)
  return h2_by_class(h2_class).exist?
end

def h2_by_id(h_id)
  return @browser.h2(id, h_id)
end
# check if H2 element exists via class, returns true or false
def h2_by_id_exists(h2_id)
  return h2_by_id(h2_id).exist?
end



def h3_by_text(h_text)
  return @browser.h3(:text, h_text)
end

# check if H2 header exists via its text, returns true or false
def h3_by_text_exists(text)
  return h3_by_text(text).exist?
end

def h3_by_class(h_class)
  return @browser.h3(:class, h_class)
end
# check if H2 element exists via class, returns true or false
def h3_by_class_exists(h_class)
  return h3_by_class(h_class).exist?
end

def h3_by_id(h_id)
  return @browser.h3(id, h_id)
end
# check if H2 element exists via class, returns true or false
def h3_by_id_exists(h_id)
  return h3_by_id(h_id).exist?
end