def stock_picker(stock_prices)
  # A hash to hold the differences
  diff = {}

  stock_prices.each_with_index do |price, index|
    if price == stock_prices[-1]
      return diff.max[1]
    end

    stock_prices[index + 1..].each_with_index do |prc, idx|
      dif = prc - price
      diff[dif] = [index, stock_prices.index(prc)]
    end 
  end
  diff.max[1]
end