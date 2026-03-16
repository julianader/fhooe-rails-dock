class SieveController < ApplicationController
  def sieve(limit)
    numbers = Array.new(limit + 1, true)

    numbers[0] = false
    numbers[1] = false

    for i in 2..limit
      if numbers[i]
        j = i * 2
        while j <= limit
          numbers[j] = false
          j += i
        end
      end
    end

    for i in 2..limit
      puts i if numbers[i]
    end
  end
end