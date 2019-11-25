# require 'directors_database'
# # require 'pry'
# # Write a method that, given an NDS creates a new Hash
# # The return value should be like:
# #
# # { directorOne => allTheMoneyTheyMade, ... }

# def directors_totals(nds)
  
#   new_hash = {}
#   row_index = 0 
   
#   while row_index < nds.length do
#       new_index = 0 
#       new_hash[nds[row_index][:name]] = 0   
      
#       while new_index < nds[row_index][:movies].length do 
#           new_hash[nds[row_index][:name]] += (nds[row_index][:movies][new_index][:worldwide_gross])
#           new_index += 1
#       end
#       row_index += 1 
#   end
#   puts nds
#   puts new_hash
#   result = new_hash.values.sum
#   new_hash
  
# end

# # Find a way to accumulate the :worldwide_grosses and return that Integer
# # using director_data as input
# def gross_for_director(director_data)
#   # pp director_data
#   puts director_data[:name] 
#   new_hash = {}
#   row_index = 0 
   
#   while row_index < director_data.length do
#       new_index = 0 
#       new_hash[director_data[:name]] = 0   
      
#       while new_index < director_data[:movies].length do 
#           new_hash[director_data[:name]] += (director_data[:movies][new_index][:worldwide_gross])
#           new_index += 1
#       end
#       row_index += 1 
#   end
#   new_hash.values.sum
# end

def directors_totals(nds)
  new_hash = {}
  new_index = 0 
  while new_index < nds[:movies].length do 
      new_hash[nds[:name]] += (nds[:movies][new_index][:worldwide_gross])
      new_index += 1
  end
  # puts nds
  # puts new_hash
  # result = new_hash.values.sum
  new_hash
end

def gross_for_director(director_data)
  directors_totals(director_data).values.sum 
end
