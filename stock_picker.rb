def stock_picker(array)
  best_days = [0,1]
  best_profit = 0

  array.each_with_index do |buy_price, buy_index|

    (buy_index...array.length).each_with_index do |sell_index|
      sell_price = array[sell_index]

      if (sell_price - buy_price) > best_profit
        best_profit = sell_price - buy_price
        best_days = [buy_index, sell_index]
      end

    end
  end

  return best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])