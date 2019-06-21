
require_relative 'item_list.rb' # => true

# require 'csv'

# csv_text = File.read('...')
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   Moulding.create!(row.to_hash)
# end
# f = File.open("my/file/path", "r")
# f.each_line do |line|
#   puts line
# end
# f.close

# open('Test.txt', 'w') { |f|
#   f.puts "Hello, world."
# }


class Shopping

  # def processText(file)
  #   fileName = file.to_s
  #   lines = file.readlines(fileName)
  #   linecount = line.size
  #   text = lines.join
  #   puts"number of lines:#{linecount}"
  #   puts"========================="
  #   puts text
  # end
  # processText("Test.txt")


  def main()
    max=true
    while max == true
      puts"1.Item list \n2.Show cart \n3.Checkout"
      puts"please enter your choice between 1 to 3"
      # it convert into integer
      x=gets.to_i

      case x
        when 1
              puts"Item list"
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
obj =Shopping.new
# obj = processText
obj.main




















