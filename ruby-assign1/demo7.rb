#!C:\Ruby200\bin\ruby

require 'D:\ruby\module'

class Vehicle
  
  def initialize(numWheels,color,price,brand)
        @numWheels=numWheels
	@color=color
	@price=price
	@brand=brand
  end
  
  def details
   puts "Details of vehicle--->"
   puts "Number of wheels in vehicle are: #{@numWheels}"
   puts "Color of vehicle is: #{@color}"
   puts "Price of vehicle is: #{@price}"
   puts "Brand of vehicle is: #{@brand}"
  end
  
  def average
   puts "Average of a vehicle depends on its type and differs from vehicle to vehicle!!!!!"
  end
  
  def speed
   puts "Speed differs from vehicle to vehicle!!"
  end
  
  def driving
   puts "Driving vehicle!!"
  end

include Example

end

class Bike < Vehicle
  def initialize(numWheels,color,price,brand)
    super
    Example.inheritance
      
  end

  def driving
   puts "Driving my bike......Overriding superclass method!!!"
  end

  
end

class Car < Vehicle
   def initialize(numWheels,color,price,brand)
    super
	
   end
   def driving
    puts "Driving my Car......Overriding superclass method!!!"
   end
end

class Bus < Vehicle

  def initialize(numWheels,color,price,brand)
    super
	
  end
   def driving
   puts "Driving bus......Overriding superclass method!!"
   end
   
end

puts "   "
puts "   "
puts "Calling bike object---------------------"
puts "   "
objBike=Bike.new(2,"red",68000,"Pulsar")
objBike.details
objBike.driving
objBike.average
objBike.speed


puts "   "
puts "   "
puts "Calling car object---------------------"
puts "   "
objCar=Car.new(4,"blue",1000000,"Honda City")
objCar.details
objCar.driving
objCar.average
objCar.speed

puts "   "
puts "   "
puts "Calling bus object---------------------"
puts "   "
objBus=Bus.new(6,"green",1500000,"Tata Bus")
objBus.details
objBus.driving
objBus.average
objBus.speed