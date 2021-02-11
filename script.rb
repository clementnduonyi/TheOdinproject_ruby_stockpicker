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

    puts "The best day to buy stocks are day(s) with price index: #{best_days[0]}"
    puts
    puts "The best day to sell stokes are day(s) with price index: #{best_days[1]}"
end

stock_picker([50,50,6,25,15,30,6,2,10])