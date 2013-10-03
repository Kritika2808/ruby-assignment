#!C:\Ruby200\bin\ruby

class Squares

 def calculate
  puts "Enter the size of the array:"
  n = ((gets.chomp.to_i)-1)
  puts "enter the array elements:"
  variable1=Array.new(n)

  for i in (0..n)
  variable1[i]=gets.chomp.to_i
  end

  puts "The array elements are: "
  puts variable1

  variable2=Array.new(n)
  for i in (0..n)
   variable2[i]=variable1[i]*variable1[i]
  end

  puts "Squares of all the numbers of array are:"
  puts variable2
 end

end

ob=Squares.new
ob.calculate

