#!C:\Ruby200\bin\ruby


class Student
  
 @@rno=0
#setters

  def setRollNum(rno=@@rno)
   @@rno += 1
   @rno=@@rno
	
  end

  def setName(name)
   @name=name
  end

  def setAge(age)
   @age=age
  end
 
  def setGender(gen)
   @gender=gen
  end



  def getRollNum
    @rno
  end

  def getName
    @name
  end

  def getAge
    @age
  end

  def getGender
    @gender
  end
  

  def showDetails(arr)
   puts "Displaying details of all the students---------"


   arr.each_with_index do |item, index|
   puts "Name of #{index} student:"+item.getName+""

   puts "Roll num of #{index} student: #{item.getRollNum} "

   puts "Age of #{index} student: #{item.getAge} "

   puts "Gender of #{index} student: #{item.getGender} "

   end

  end


 def sorting(arr)
  arr.sort! { |a,b| a.getName.downcase <=> b.getName.downcase }

  puts "Displaying sorted list according to name---------"


   arr.each_with_index do |item, index|
   puts "Name of #{index+1} student:"+item.getName+""

   puts "Roll num of #{index+1} student: #{item.getRollNum}"

   puts "Age of #{index+1} student: #{item.getAge} "

   puts "Gender of #{index+1} student: #{item.getGender} "

   end


   puts " "
   puts"-------------------"

   arr.sort! { |a,b| a.getAge <=> b.getAge }

   puts "Displaying sorted list according to age---------"


   arr.each_with_index do |item, index|
   puts "Name of #{index+1} student:"+item.getName+""

   puts "Roll num of #{index+1} student: #{item.getRollNum} "

   puts "Age of #{index+1} student: #{item.getAge} "

   puts "Gender of #{index+1} student: #{item.getGender} "

   end




   puts " "
   puts"-------------------"

   arr.sort! { |a,b| a.getRollNum <=> b.getRollNum}

   puts "Displaying sorted list according to roll num---------"


   arr.each_with_index do |item, index|
   puts "Name of #{index+1} student:"+item.getName+""

   puts "Roll num of #{index+1} student: #{item.getRollNum} "

   puts "Age of #{index+1} student: #{item.getAge} "

   puts "Gender of #{index+1} student: #{item.getGender} "

   end

 end

end




   puts "How many students you want to enter:"
   stuNum=gets.chomp.to_i

   puts "Enter details of the students----------"

   arr=Array.new

   for i in 1..stuNum
   ob=Student.new
   puts "Enter name of #{i} student:"
   name=gets.chomp
   ob.setName(name)

   ob.setRollNum()

   puts "Enter age of #{i} student:"
   age=gets.chomp.to_i
   ob.setAge(age)

   puts "Enter gender of #{i} student:"
   gen=gets.chomp
   ob.setGender(gen)
   
   arr.push(ob)   

   end

   ob1=Student.new
   ob1.showDetails(arr)
   ob1.sorting(arr)


  
   






  