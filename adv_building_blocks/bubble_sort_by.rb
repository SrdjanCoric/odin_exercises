def bubble_sort_by(nums)
  nums.length.times do  
    0.upto(nums.length - 2) do |x|
      if yield(nums[x], nums[x + 1]) > 0
        nums[x], nums[x+1] = nums[x+1], nums[x]
      end
    end
  end
  return nums
end

result = bubble_sort_by (["hi","hello","hey"]) do |left, right|
left.length - right.length
end
p result 

