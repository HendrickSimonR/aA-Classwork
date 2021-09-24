def first_anagram?(str1, str2)
  anagrams = str1.split('').permutation.to_a
  split = str2.split('')
  anagrams.include?(split)
end

p first_anagram?("gizmo", "sally")
p first_anagram?("elvis", "lives")

# n factorial because it deafults to the greatest worst case scenario