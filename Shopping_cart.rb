class Products
	def initialize(name, price)
    	@price = price
    	@name = name
  	end
  	def price
  		return(@price)
  	end
  	def describe
  		return(@name)
  	end


end

class Apple < Products
	def initialize(name, price)
    	super(name, price)
  	end
end

class Orange < Products
	def initialize(name, price)
    	super(name, price)
  	end
end

class Grapes < Products
	def initialize(name, price)
    	super(name, price)
  	end
end

class Banana < Products
	def initialize(name, price)
    	super(name, price)
  	end
end
class Watermelon < Products
	def initialize(name, price)
    	super(name, price)
  	end
end
class ShoppingCart
	require 'date'
	@@total_items
	@@bill
	@@applecounter
	def initialize()
		@@total_items = Array.new()
		@@bill = 0
		@@applecounter = 1
	end

	def add_item(item, price)
		
		if item == "apple"
				if  @@applecounter  == 1
					apple = Apple.new(item, price)
					@@total_items.push(apple)
					@@applecounter = 2
				elsif @@applecounter == 2
					apple = Apple.new(item, 0)
					@@total_items.push(apple)
					@@applecounter = 1
				end
		elsif item == "orange"
				orange = Orange.new(item, price)
				@@total_items.push(orange)
				puts("#{item} has been added.")
		elsif item == "grapes"
				grapes = Grapes.new(item, price)
				@@total_items.push(grapes)				
				puts("#{item} has been added.")
		elsif item == "banana"
				banana = Banana.new(item, price)
				@@total_items.push(banana)				
				puts("#{item} has been added.")
		elsif item == "watermelon"
			 if checkday()
			 	price = (price - ((price/100.0)*10))
			 	watermelon = Watermelon.new(item, price)
				@@total_items.push(watermelon)
				puts("#{item} has been added.")
			 else
			 	watermelon = Watermelon.new(item, price)
				@@total_items.push(watermelon)
				puts("#{item} has been added.")
			 end
				
			# else 
			# 	print('Item could not be added.')
		end
	end
	def sumtotal()
		@@total_items.each{|a| @@bill += a.price}
		puts("Your total today is #{@@bill} euros without any given discount.")
	end
	def discount()
		if @@bill > 100
			@@bill = (@@bill -10)
		end			
		if (@@total_items.size > 5)
		 	@@bill = (@@bill - ((@@bill/100.0)*5.0))
		end
		puts("After applying the discount your total today is #{@@bill} euros.")
	end
	def checkday
		numday = Date.today.wday
		if  numday == 0 || numday == 6
			return(true)
		else
			return(false)
		end
	end

end



my_cart = ShoppingCart.new
# my_cart.prueba(2)
 # my_cart.add_item("apple", 10)
 # my_cart.add_item("apple", 10)
 # my_cart.add_item("apple", 10)
 # # my_cart.add_item("apple", 10)
 # my_cart.add_item("apple", 10) 
 # my_cart.add_item("apple", 10)
 # my_cart.add_item("apple", 10)
 # my_cart.add_item("apple", 10)

 # my_cart.add_item("apple", 10)
 # my_cart.add_item("apple", 10)
 # my_cart.add_item("banana", 20)
 # # my_cart.add_item("orange", 5)
 # my_cart.add_item("banana", 20)
# my_cart.add_item("orange", 5)
 # my_cart.add_item("banana", 20)
 # my_cart.add_item("banana", 20)
 # my_cart.add_item("banana", 20)
 # my_cart.add_item("banana", 20)
 my_cart.add_item("watermelon", 50)

 my_cart.add_item("watermelon", 50)

 my_cart.add_item("watermelon", 50)
# my_cart.add_item("apple", 10)
# # my_cart.add_item("apple", 10)
 my_cart.sumtotal()
 my_cart.discount()
 # my_cart.checkday()











