def compute_total(number_of_items, item_code)
  if item_code == 'VS5'
    sizes = [ 3, 5 ].freeze
    prices = [ 6.99, 8.99 ].freeze
    n = 2
    k = Array.new(number_of_items + 1)
    k[0] = 0
    for size in (1..(number_of_items + 1))
      max_result = 0
      for i in (1..n)
        si = sizes[i]
        vi = prices[i]
        if si <= size
          sub_value = k[size - si] + vi
          if sub_value > max_result
            max_result = sub_value
          end
        end
      end
    end
    return k[w] = max_result
  # elsif item_code == 'MB11'
    # size = [ 2, 5, 8 ].freeze
    # price = [ 9.95, 16.95, 24.95 ].freeze
  # elsif item_code == 'CF'
    # size = [ 3, 5, 9 ].freeze
    # price = [ 5.95, 9.95, 16.99 ].freeze
  end
end

order_one = compute_total(10, 'VS5')
p order_one
# order_two = compute_total(14, 'MB11')
# p order_two
# order_three = compute_total(13, 'CF')
# p order_three

