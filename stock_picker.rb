require "pry-byebug"

def stock_picker(stock_prices)
  # An array to hold the differences
  diff = []

  stock_prices.each_with_index do |price, index|
    if price == stock_prices[-1]
      return diff
    end
    stock_prices[index + 1..].each_with_index do |prc, idx|
      dif = prc - price
      diff << dif
    end
  end
  diff
end

p stock_picker([17,3,6,9,15,8,6,1,10])