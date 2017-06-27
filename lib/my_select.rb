def my_select(collection)
 # your code here!
  new_collection = []
  i = 0
  if block_given?
    while i < collection.length
      new_collection = collection.select{|num| yield(num)}
      i += 1
    end
    new_collection
  else
    collection
  end
end
