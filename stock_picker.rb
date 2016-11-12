def stock_picker(array)
  profits = []
  array.each_with_index do |buy_price, buy_index|
    (buy_price...array.length).each_with_index do |sell_price, sell_index|
      profits << sell_price - buy_price
    end
  end
  profits.max

end

p stock_picker([17,3,6,9,15,8,6,1,10])