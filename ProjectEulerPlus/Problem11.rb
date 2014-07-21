=begin 
Project Euler Plus Problem 11

Written By Alan Bishop 7/21/14

Taken a lot from my previous PE solution
=end


matrix = ""
20.times do
    matrix += gets
end

#puts matrix

#Let's convert this into a 2D Array
rows = matrix.split("\n")
grid = rows.map{ |x| x.split(" ").map{ |x| x.to_i } }

currentProduct = 0
highestProduct = 0


#Find the highest product

#Horizontal
(0..16).each do |x|
    (0..19).each do |y|
        currentProduct = grid[x][y] * grid[x+1][y] * grid[x+2][y] * grid[x+3][y]
        if currentProduct > highestProduct
            highestProduct = currentProduct
            #puts "Highest product is #{grid[x][y]} * #{grid[x+1][y]} * #{grid[x+2][y]} * #{grid[x+3][y]}"
            #puts "X = #{x}, Y = #{y}, Result = #{highestProduct}"
        end
    end
end

#Vertical
(0..16).each do |y|
    (0..19).each do |x|
        currentProduct = grid[x][y] * grid[x][y+1] * grid[x][y+2] * grid[x][y+3]
         if currentProduct > highestProduct
            highestProduct = currentProduct
            #puts "Highest product is #{grid[x][y]} * #{grid[x+1][y]} * #{grid[x][y+1]} * #{grid[x][y+2]}"
            #puts "X = #{x}, Y = #{y}, Result = #{highestProduct}"
        end
    end
end

#Diagonal Right
(0..16).each do |x|
    (0..16).each do |y|
        currentProduct = grid[x][y] * grid[x+1][y+1] * grid[x+2][y+2] * grid[x+3][y+3]
       if currentProduct > highestProduct
            highestProduct = currentProduct
            #puts "Highest product is #{grid[x][y]} * #{grid[x+1][y+1]} * #{grid[x+2][y+1]} * #{grid[x+3][y+3]}"
            #puts "X = #{x}, Y = #{y}, Result = #{highestProduct}"
        end
    end
end

#Diagonal Left
(0..16).each do |x|
    (0..16).each do |y|
    currentProduct = grid[x+3][y] * grid[x+2][y+1] * grid[x+1][y+2] * grid[x][y+3]
   if currentProduct > highestProduct
            highestProduct = currentProduct
            #puts "Highest product is #{grid[x+3][y]} * #{grid[x+2][y+1]} * #{grid[x+1][y+2]} * #{grid[x][y+3]}"
            #puts "X = #{x}, Y = #{y}, Result = #{highestProduct}"
        end
    end
end

puts highestProduct
