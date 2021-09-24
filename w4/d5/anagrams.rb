def first_anagram?(str1, str2)
  anagrams = str1.split('').permutation.to_a
  split = str2.split('')
  anagrams.include?(split)
end

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvisssssssssssssssssss", "livesssssssssssssssssss")

# 'al' 2!
# 'alk' alk, lak, kla, kal, akl, lka 3!

# n factorial because it deafults to the greatest worst case scenario


# if second string empty => true 
# find first string char index in second string and delete it

def second_anagram?(str1, str2)
  arr = str2.split('')

  str1.each_char do |char|
    arr.find_index(char).nil? ? next : arr.delete_at(arr.find_index(char))
  end

  arr.empty?
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvisssssssssssssssssss", "livesssssssssssssssssss")