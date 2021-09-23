def my_uniq(array)
  uniques = []
  array.each { |ele| uniques << ele unless uniques.include?(ele) }
  uniques
end 


