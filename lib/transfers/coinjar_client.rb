require 'coinjar'

module Transfers
  class CoinjarClient

    attr_reader :address

    def initialize(address)
      @address = address
      CoinJar.api_key = ENV['COINJAR_API']
    end

    def self.greg
      new("1N26EH82om1iBHzEoy83Jmz3b46wvX1ZNA")
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

      p = CoinJar::Payment.new payee: address, amount: amount

      p.create
      p.confirm!

    end

  end
end