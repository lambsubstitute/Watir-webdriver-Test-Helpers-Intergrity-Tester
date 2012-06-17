
#get todays day
def GetDay()
  today = Time.now
  today = today.strftime('%a')
  #puts today
  return today
end

# Gets a regular expression to do class matching with so you don't need to worry
# about any other non-cuke class' being on an html element
# e.g. @browser.link(:class, get_class_regex("cuke_add_button"))
def cuke_class(target_class)
  /(\b)#{target_class.gsub(' ','_')}(\b)/
end


##each of the class methods have a "cuke" method invoked. This method can be used to add the default classing when we
## can get the developers to include these as a convention.


## methods for working with links ##

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



###METHODS FOR WORKING WITH BUTTONS

##button by class methods
#button by class, returns the button object if its available
def button_by_class(button_class)
  return @browser.button(:class, cuke_class(button_class))
end

#button by class exists, returns true or false
def button_by_class_exists(button_class)
  return button_by_class(button_class)
end

#click the button with class
def button_by_class_click(button_class)
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
  return @browser.button(:value, button_value)
end

#button_by value exists, returns true or false
def button_by_value_exists(button_value)
  return button_by_value(button_value).exist?
end

#click the button by value
def button_by_value_click(button_value)
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






##methods for working with labels

##lable by
# check if label exists by class, returns true or false
def label_by_class_exists(label_class)
  return @browser.label(:class, cuke_class(label_class)).exist?
end

# check if label exists by text, returns true or false
def label_by_text_exists(label_text)
  return @browser.label(:text, label_text).exist?
end








## methods for working with images
#get image by its alt, returns image object
def image_by_alt(image_alt)
  return @browser.image(:alt, image_alt)
end

# check image alt exists, returns true or false
def image_by_alt_exists(image_alt)
  return image_by_alt(image_alt).exist?
end




## methods for working with spans ##
# get a span by class, returns span object
def span_by_class(class_name)
  return @browser.span(:class, cuke_class(class_name))
end

#span by class exists, returns true or false
def span_by_class_exists(class_name)
  return span_by_class(class_name).exist?
end

# get a span by text, returns span object
def span_by_text(text_name)
  return @browser.span(:text, text_name)
end

#span by text exists, returns true or false
def span_by_text_exists(text_name)
  return span_by_text(text_name).exist?
end




## methods for working with divs ##
# get a div by class, returns div object
def div_by_class(class_name)
  return @browser.div(:class, cuke_class(class_name))
end

# check if div exists by class, returns true or false
def div_by_class_exists(class_name)
  return div_by_class(class_name).exist?
end

# get a div by id, returns boolean
def div_by_id_exists(id_name)
  return div_by_id(id_name).exist?
end

# get a div by id, returns div object
def div_by_id(id_name)
  return @browser.div(:id, id_name)
end


## methods for working with headers
# check if H2 header exists via its text, returns true or false
def h2_with_text_exists(text)
  return @browser.h2(:text, text).exist?
end

# check if H2 element exists via class, returns true or false
def h2_with_class_exists(h2_class)
  return @browser.h2(:class, cuke_class(h2_class)).exist?
end

# check if H3 header exists via its text, returns true or false
def h3_with_text_exists(text)
  return @browser.h3(:text, text).exist?
end

# check if H3 header exists via its class, returns true or false
def h3_with_class_exists(h3_class)
  return @browser.h3(:class, cuke_class(h3_class)).exist?
end




## methods for working with text
# check if text exists in the page, returns true or false
def text_exists(text)
  return @browser.text.should include (text)  #<< not returning correct value, should not be using should in this circumstance  TODO: CHECK THIS WITH PROPER LINE ON FULL TEST SUITE
                                              # return @browser.text.include? (text)
end












## methods for working with parapgrahs
# get a paragraph by class, returns paragraph
def paragraph_by_class(class_name)
  return @browser.p(:class, cuke_class(class_name))
end

# check a paragraph by class exists, returns true or false
def paragraph_by_class_exists(class_name)
  return paragraph_by_class(class_name).exist?
end

# get parapgraph by text, returns parapragh object
def paragraph_by_text(text)
  return @browser.p(:text, text)
end

# check a paragraph by text exists, returns true or false
def paragraph_by_text_exists(text)
  return paragraph_by_text(text).exist?
end




## methods for working with dropdowns
# get a select by class, returns dropdown object
def select_by_class(class_name)
  @browser.select_list(:class, cuke_class(class_name))
end

# check dropdown exists, returns true or false
def select_by_class_exists(class_name)
  return select_by_class(class_name).exist?
end

def select_by_class_set_value(class_name, value)
  select_by_class(class_name).select value
end

# get select list from id, returns select list object
def select_by_id(id_name)
  @browser.select_list(:id, id_name)
end

def select_by_id_set_value(id_name, value)
  select_by_id(id_name).select value
end


## methods for file field
#find file find by id
def filefield_by_id(filefield_id)
  return @browser.file_field(:id, filefield_id)
end

# set the filefield field
def filefield_by_id_set_value(filefield_id, value)
  filefield_by_id(filefield_id).set value
end









## methods for lists - ordered and unordered
# get a ordered list by class, returns ordered list object
def ol_by_class(class_name)
  return @browser.ol(:class, cuke_class(class_name))
end

def ol_by_id(id_name)
  return @browser.ol(:id, id_name)
end

# get a li by class, returns list object
def li_by_class(class_name)
  return @browser.li(:class, cuke_class(class_name))
end

def li_by_id(id_name)
  return @browser.li(:id, id_name)
end




## methods for tables
# get table by class, returns table object
def table_by_class(table_class)
  return  @browser.table(:class, cuke_class(table_class))
end

# check if tabel exists by class, returns true or false
def table_by_class_exists(table_class)
  return table_by_class(table_class).exist?
end

# get table by id, returns table object
def table_by_id(table_id)
  return  @browser.table(:id, table_id)
end

# check table exists by id, returns true or false
def table_by_id_exists(table_id)
  return  table_by_id(table_id).exist?
end




#todo eventually refactor all @browser calls to use these class elements finders - when worked out WTF they are doing

# gets elements by class
def elements_by_class(element_type, class_name)
  @browser.elements_by_xpath("//#{element_type}[contains(@class,'#{class_name}')]")
end

# get element by class
def element_by_class(element_type, class_name)
  @browser.element_by_xpath("//#{element_type}[contains(@class,'#{class_name}')]")
end

# get element by xpath
def element_by_xpath(xpath)
  @browser.element_by_xpath(xpath)
end

# get elements by xpath
def elements_by_xpath(xpath)
  @browser.elements_by_xpath(xpath)
end