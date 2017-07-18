def bubble_sort(nums)
  nums.length.times do  
    0.upto(nums.length - 2) do |x|
      if nums[x] > nums[x + 1]
        nums[x], nums[x+1] = nums[x+1], nums[x]
      end
    end
  end
  return nums
end

p bubble_sort([4,3,78,2,0,2])


