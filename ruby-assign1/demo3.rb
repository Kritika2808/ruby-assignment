#!C:\Ruby200\bin\ruby

class NameString

  def operation 
    puts "Please enter your name:"
    name=gets.chomp
    puts "Your name is: #{name}!!"
    arr1=name.chars.to_a
    arr=arr1.each_with_index.map do |i,index|
     if(index%2==0)
      i.upcase
     else
      i.downcase
     end
    end
   puts "Modified name is:"
   puts arr.join()
  end

end


ob=NameString.new
ob.operation