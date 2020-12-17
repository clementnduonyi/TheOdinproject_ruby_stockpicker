def stock_picker(stocks)
   best_days = []
   gains = 0

   stocks.each_with_index do |stock_price1, idx1|
        stocks.each_with_index do |stock_price2, idx2|
            if stock_price2 - stock_price1 > gains && (idx2 > idx1)
                gains = stock_price2 - stock_price1
                best_days[0] = idx1
                best_days[1] = idx2
            end
        end
    end

    p best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])