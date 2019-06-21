class DemoTest

require_relative 'demo.rb'

  def main()

    # it.main
    puts "Add some items to your list."
    # list['items'].push(it.add_list_item())
    # list['items'].push(it.add_list_item())
  end


end

demo = DemoTest.new
demo.main
it = ItemList.new
list = it.create_list()