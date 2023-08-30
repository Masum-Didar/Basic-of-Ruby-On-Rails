def clear(items)
   return if items.nil? || !items.is_a?(Array)
   items.each do |item|
     # clear the item
     puts "Clearing item: #{item}"
   end
end

# Create an array of items you want to clear
items_to_clear = ["Item 1", "Item 2", "Item 3"]

# Call the clear method with the array
clear(items_to_clear)