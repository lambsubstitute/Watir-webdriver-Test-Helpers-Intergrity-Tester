#Performance related data
def performance
  load_time = @browser.performance.summary[:response_time]
  #puts "page load time - milliseconds"
  #puts load_time #+ " - milliseconds"
  time_to_first_byte = @browser.performance.summary[:time_to_first_byte]
  #puts "time taken till first byte loaded - miliseconds"
  #puts time_to_first_byte #+ " - milliseconds"
end

def getBackOrderNumber(order_number)
  return_url = @browser.url
  order_url = @base_url + "Orders/Home" + order_number
  @browser.goto(order_url)
  @browser.goto(return_url)
end

def refreshBrowser()
  url = @browser.url
  @browser.goto(url)
end


#validation check method for the edit customer page, checks to see you ahve an address when saving name changes or emails, which will stop the changes being saved
def passedCustEditValidation()
  if  @browser.span(:class, "field-validation-error").exist?
    validation_check = @browser.span(:class, "field-validation-error").text
    #puts validation_check
    if validation_check.include? "The Street Address field is required." || "The Town field is required." || "The Postcode field is required."
      step 'I set the street "example street"'
      step 'I set the town "example town"'
      step 'I set the postcode "example postcode"'
      #step 'I set the country "'+ country +'"'
      #step 'I set the phone number "'+ phone_number +'"'
      @browser.button(:value, "Save Changes").click
    end
  end
end

def waitForOrderDiv()
  count = 0
  exit_flag = 0
  ord_num = @order_number
  ord_num = turnToString(ord_num)

  while count < 30 && exit_flag == 0
    if @browser.link(:text, ord_num).exist?
      exit_flag = 1
    else
      sleep 1
      url = @browser.url
      @browser.goto(url)
      count = count + 1
    end
  end
end


#create a unique surname
def Createuniquename()
  o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten;
  string  =  (0..12).map{ o[rand(o.length)]  }.join;
  name = string
  return name
end

#create a unique email, using the generated surname as the first half and a random 12 char generated string for the domain.
def Createuniqueemail()
  o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten;
  string  =  (0..12).map{ o[rand(o.length)]  }.join;

  email_address = @customer_name + "@" + string + ".com"
  return email_address
end


def turnToInt(int)
  int = int.to_i
  return int
end

def turnToFloat(int)
  int = int.to_f
  return int
end

def turnToString(convertee)
  convertee = convertee.to_s
end


#get todays day
def GetDay()
  today = Time.now
  today = today.strftime('%a')
  #puts today
  return today
end

def getProductDetails(product_div)
  order_details = []
  order_details.push(product_div.td(:class, "unitprice").text)
  order_details.push(product_div.td(:class, "rrpprice").text)
  order_details.push(product_div.td(:class, "tradeprice").text)
  order_details.push(product_div.td(:class, "quantity").text)
  return order_details
end

def tradeDiscountPrice()
  unit_price = @unit_price
  rrp_price = @rrp_price
  trade_price = @trade_price
  unit_price = turnToFloat(unit_price)
  trade_price = turnToFloat(trade_price)
  discount = turnToFloat(@discount)
  a = 0.01
  x = 0.01
  a = discount/100
  x = a * trade_price
  y =  x + trade_price
  line_cost = y
  discounted_price = unit_price - line_cost
  discounted_price = discounted_price + 0.01

  line_cost = line_cost.round(2)
  discounted_price = discounted_price.round(2)
  discount_prices = []
  discount_prices.push(line_cost)
  discount_prices.push(discounted_price)
  return discount_prices
end


def LineDiscountPrice()
  unit_price = @unit_price
  rrp_price = @rrp_price
  rrp_price = turnToFloat(rrp_price)
  unit_price = turnToFloat(unit_price)
  discount = turnToFloat(@discount)

  rrp_price = rrp_price + 0.01
  a = 0.01
  discount_amount = 0.01

  a = discount/100


  discount_amount = a * rrp_price

  line_cost =  unit_price - discount_amount
  line_cost = line_cost + 0.01
    line_cost = line_cost.round(2)
  discount_amount = discount_amount.round(2)

  discount_prices = []
  discount_prices.push(line_cost)
  discount_prices.push(discount_amount)
  return discount_prices
end


def orderedDiscountPrice()
  unit_price = @unit_price
  rrp_price = @rrp_price
  rrp_price = turnToFloat(rrp_price)
  unit_price = turnToFloat(unit_price)
  discount = turnToFloat(@discount)

  unit_price = unit_price + 0.01
  a = 0.01
  discount_amount = 0.01

  a = discount/100


  discount_amount = a * unit_price

  line_cost =  unit_price - discount_amount
  line_cost = line_cost + 0.01
  line_cost = line_cost.round(2)
  discount_amount = discount_amount.round(2)

  discount_prices = []
  discount_prices.push(line_cost)
  discount_prices.push(discount_amount)
  return discount_prices
end

# Gets a regular expression to do class matching with so you don't need to worry
# about any other non-cuke class' being on an html element
# e.g. @browser.link(:class, get_class_regex("cuke_add_button"))
def cuke_class(target_class)
  #/(\b)cuke_#{target_class.gsub(' ','_')}(\b)/
end


#


##methods for working with labels
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