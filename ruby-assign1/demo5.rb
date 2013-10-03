#!C:\Ruby200\bin\ruby

class Demo5

  def input
   puts "Enter the first argument:"
    n1 = gets.chomp
   puts "Enter the second argument:"
    n2 = gets.chomp
   begin
     operate(n1,n2)
   end
     rescue
       puts "Please enter both arguments in same format either string or integer"
  end


  def operate(num1,num2)
    begin
      if (num1.to_i.to_s == num1)
       if(num2.to_i.to_s == num2)
        puts "The addition of given two integers is: #{num1.to_i+num2.to_i}"
       else
        raise "Please give both inputs in either integer or string.First argument is integer and second is String."
       end        
      else
       if(num2.to_i.to_s == num2)
        raise "Please give both inputs in either integer or string.First argument is String and second is number."
       else
        puts "The addition of given two strings is: #{num1+num2}"
       end
      end
    end

   
  end


end


obj=Demo5.new
obj.input()