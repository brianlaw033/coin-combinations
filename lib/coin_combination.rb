require 'pry'

class Fixnum

  $coins = {
    25 => "Quarter", 10 => "Dime", 5 => "Nickel", 1 => "Penny"
  }

  define_method(:coin_combination) do
    change = self
    value = $coins.keys
    result = ""
      $coins.each do |num, name|
        if change >= num
          quantity = change/num
          change = change%num
          result.concat(name + ": #{quantity} ")
        end
      end
    result
  end

end
