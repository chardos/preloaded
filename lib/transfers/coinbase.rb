module Transfers
  class Coinbase

    attr_reader :address

    def initialize(address)
      @address = address
    end

    def self.ben
      new("1Dgh4yoNweWEGLJnwgc1JW76P4w1YzpjEf")
    end

    def buy_bitcoin_for(source_amount)
      puts "coinbase buy #{source_amount}"
      0.12
    end

    def sell_bitcoin(number_of_bitcoins)
      puts "coinbase sell #{number_of_bitcoins}"
    end

    def send_bitcoins(address, amount)
      puts "coinbase send #{address}, #{amount}"
    end

  end
end