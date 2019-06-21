class ItemsList
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

  def main()
    list = create_list()
    puts "Add some items to your list."

    list['items'].push(add_list_item())
    list['items'].push(add_list_item())

    puts "Here's your list:\n"
    print_list(list)

    max=true
    while max == true
      puts"1.Item list \n2.Show cart \n3.Checkout"
      puts"please enter your choice between 1 to 3"
      x=gets.to_i

      case x
        when 1
              puts"Item list"
              print_list(list)
        when 2
              puts"Show cart"
        when 3
              puts"Checkout"
        else
            break

      end
    end
  end
end

item = ItemsList.new
item.main