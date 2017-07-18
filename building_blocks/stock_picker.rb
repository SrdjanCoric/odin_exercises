def stock_picker(prices)
  max_diff = 0
  result = []
  0.upto(prices.size - 2) do |x|
    (x + 1).upto(prices.size - 1) do |y|
      diff = prices[x] - prices[y]
      if diff < 0 && diff.abs > max_diff
        max_diff = diff.abs
        result << [x, y]
      end
    end
  end
  return result.last
end


