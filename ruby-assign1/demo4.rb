#!C:\Ruby200\bin\ruby

class Demo4

def operation 
 key_hash = { }	# start with an empty hash

 input = ""
 name = ""
 role = ""
 
 print "Enter cricketer's name and his role in the team in the given format--- name=>role; or  just ENTER to quit: "
 input = gets.chomp
   while input != "" do
 	(name, role) = input.split("=>")
	
 	key_hash[name] = role
 	
 	print "Enter name, role; or just ENTER to quit: "
 	input = gets.chomp
  end
  
  puts "Here are the hash contents:"
  key_hash.each do |key,value|
 	puts "#{key} is a #{value}."
  end
end
  
end 


ob=Demo4.new
ob.operation

















