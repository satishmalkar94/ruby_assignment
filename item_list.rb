def create_list
  print "Your item list is"
  name = gets

  hash = { "name" => name, "items" => Array.new }
  return hash
end



def add_list_item
  print "item name "
  item_name = gets.chomp

  print "Quantity? "
  quantity = gets.chomp.to_i

  # print "price"
  # price = gets.chomp.to_f


  hash = { "name" => item_name,"quantity" => quantity  }
  return hash
end



def print_separator(character="-")
  puts character * 80
end

def print_list(list)
  puts "List: #{list['name']}"
  print_separator()

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
         "Quantity: " + item['quantity'].to_s
  end

  print_separator()
end

list = create_list()

puts "Add some items to your list."

list['items'].push(add_list_item())
list['items'].push(add_list_item())

puts "Here's your list:\n"
print_list(list)