def menu_order(menu, receipts_list)
  order_hash = {}
  receipts_list.each do |total|
    menu.each do |item, price|
      if price == total 
        order_hash[total] = {item: 1}
        next
      elsif price % total == 0.0
        quantity = (total / price).round()
        order_hash[total] = {item: quantity}
        next
      elsif price < total 
        num = (total / price).to_i
        sub_total = 0
        (1..num).each do |num|
          sub_total += num * price
          remainder = price - sub_total 
          if menu.value? remainder
            a = menu.key(remainder)
            order_hash[total] = {item: num, a: 1}
          else 
            
          end 
        end 
      else 
        if menu.
      end 
    end 
  end 

end 



menu = {
  'veggie sandwich' => 6.85,
  'extra veggies' => 2.20,
  'chicken sandwich' => 7.85,
  'extra chicken' => 3.20,
  'cheese' => 1.25,
  'chips' => 1.40,
  'nachos' => 3.45,
  'soda' => 2.05,
}

receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]