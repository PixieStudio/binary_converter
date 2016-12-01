require './lib/class_convert.rb'
require './lib/method_convert.rb'

menu = { "1": "RGB to SWC",
         "2": "Hexadecimal to SWC",
         "3": "RGB to Hexadecimal",
         "4": "Hexadecimal to RGB",
         "5": "Decimal > Hexadecimal > Binary",
         "6": "Hexadecimal > Decimal > Binary",
         "7": "Binary > Hexadecimal > Decimal",
         "8": "Binary Coded Decimal"
}
100.times do 
  # menu.each do |mk, mv|
    # Menu
    " Menu ".title('h1')
    " Safe Web Colors ".title
    puts "1. #{menu[:"1"]}"
    puts "2. #{menu[:"2"]}"
    " RGB Colors ".title
    puts "3. #{menu[:"3"]}"
    puts "4. #{menu[:"4"]}"
    " Converter ".title
    puts "5. #{menu[:"5"]}"
    puts "6. #{menu[:"6"]}"
    puts "7. #{menu[:"7"]}"
    " BCD ".title
    puts "8. #{menu[:"8"]}"
    " Others ".title('h1')
    puts "99. Quitter"
    "".title('h1')
    puts "Choose a converter :"
    choice = gets.chomp.to_i

    if choice == 99
      break
    else
      mk = choice.to_s.to_sym
      menu[mk].title
      puts "Value to convert :"
      num = gets.chomp.to_s

      converter(choice,num)
      puts "\n\nQuitter ? (y/n)"
      choice = gets.chomp
      break if choice == "y"
    end # choice
  # end #menu hash
end #loop
