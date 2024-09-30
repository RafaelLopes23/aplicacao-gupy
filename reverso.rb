# reverso.rb

puts "Digite uma string para reverter:"
input_string = gets.chomp
reversed_string = ""
input_string.each_char { |char| reversed_string = char + reversed_string }
puts "String revertida: #{reversed_string}"