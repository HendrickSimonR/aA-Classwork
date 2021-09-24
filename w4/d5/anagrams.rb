def first_anagram?(str1, str2)
  anagrams = []
  (0...str1.length).each do |i|
    anagrams << str1.permutations(i)
  end
  anagrams
end

p first_anagram?("gizmo", "sally")
p first_anagram?("elvis", "lives") 