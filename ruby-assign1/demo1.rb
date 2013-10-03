#!C:\Ruby200\bin\ruby
class Factorial

  def input
   puts "Enter the number whose factorial you want to find:"
    n1 = gets.chomp.to_i
    fact(n1)
  end
  def fact(n)
    if n == 0
      1
    else
      n * fact(n-1)
    end
  end
end

ob1=Factorial.new
ans=ob1.input
puts "Factorial is #{ans}"


#Method returns the value of last statement it executed. 