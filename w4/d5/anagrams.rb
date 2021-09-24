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
# linear because only one loop

def third_anagram?(str1, str2)
  str1.split('').sort == str2.split('').sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

# run time of split linear, sort is nlogn
# better

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  str1.each_char { |char| hash1[char] += 1 }
  str2.each_char { |char| hash2[char] += 1 }
  hash1.sort == hash2.sort
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

# time complexity: n^2

def bonus_anagram?(str1, str2)
  hash = Hash.new(0)
  str1.each_char { |char| hash[char] += 1 }
  str2.each_char do |char|
    if hash.has_key?(char) && hash[char] > 0
      hash[char] -= 1
    else
      return false
    end
  end
  true
end

p bonus_anagram?("gizmo", "sally")    #=> false
p bonus_anagram?("elvis", "lives")    #=> true