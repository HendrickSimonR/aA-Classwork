def my_min(arr)
  smallest = nil
  arr.each.with_index do |num1, idx|
    smallest = num1 if arr.all? do |num2|
      num1 < num2
      p smallest
    end
  end
  smallest
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)