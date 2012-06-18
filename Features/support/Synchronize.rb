def waitForStatus(order_status)
  count = 0
  exit_flag = 0
  while count < @master_timeout && exit_flag == 0
    status_line = @browser.div(:class, /orderState/)
    if status_line.text.include? order_status
      exit_flag = 1
      puts "expected order state found"
      break
    else
      sleep 1
      count = count + 1
      puts count
      refreshBrowser()
    end
  end
  #puts "i waited: " + count + " seconds for this message to appear"
  if exit_flag == 0
    puts "The message failed to go in to the expected status within set timeout limit"
  end
end

def waitForMessage(message)
  count = 0
  exit_flag = 0
  while count < @master_timeout && exit_flag == 0
    status_line = @browser.div(:class, /orderState/)
    if @browser.text.include? message
      exit_flag = 1
      puts "message has been found"
      break
    else
      sleep 1
      count = count + 1
      puts count
      refreshBrowser()
    end
  end
  #puts "i waited: " + count + " seconds for this message to appear"
  if exit_flag == 0
    puts "the expected message failed to appear in the audit log within set timeout limit"
  end
end




#wait for orders, takes the order number and the page that the test is on
#and will wait the amount set out in the @master_timout found in cucumber settings
def waitForOrder(order_number)
  count = 0
  exit_flag = 0
  while count < @master_timeout && exit_flag == 0
    if @browser.link(:text, order_number).exist?
      exit_flag = 1
      puts "order has been found"
      break
    else
      count = count + 1
      puts count
      sleep 1
      refreshBrowser()
    end
  end
 #puts "i waited: " + count + " seconds for this message to appear"
  if exit_flag == 0
    puts "failed to find order in the list within set timeout limit"
  end
end

def findOrderDiv()
  puts "I am in the admin list for fraud or notes checking, order finding method"
  count = 0
  exit_flag = 0
  div_id = "order" + @order_number
  while count < @master_timeout && exit_flag == 0
    if @browser.div(:id, div_id).exist?
      order_div = @browser.div(:id, div_id)
      exit_flag = 1
      puts "found the order in the list"
      break
    elsif
      puts count
      sleep 1
      url = @browser.url
      @browser.goto(url)
      count = count + 1
    end
  end
  if exit_flag == 0
    puts "failed to find order in the list within set timeout limit"
  end
 # puts "i waited: " + count
  return order_div
end


#will wait the expected time out period for the table, if not there in that time it will fail
def waitForTableByClass(table_class)
  exit_flag = 0
  count = 0
  while count < @results_table_timeout && exit_flag == 0
    if @browser.table(:class, table_class).exist?
      exit_flag = 1
      puts "table has been found"
      break
    else
      sleep 1
      count = count + 1
      puts count
    end
  end

  if exit_flag == 0
    puts "the table was not found inside the set timeout limit"
  end

end


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