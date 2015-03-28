module Transfers
  class Coinjar

    def address
      "coinjaraddress"
    end


    def buy_bitcoin_for(source_amount)
      puts "coinjar buy #{source_amount}"
      0.12
    end

    def sell_bitcoin(number_of_bitcoins)
      puts "coinjar sell #{number_of_bitcoins}"
    end

    def send_bitcoins(address, amount)
      puts "coinjar send #{address}, #{amount}"
    end

  end
end