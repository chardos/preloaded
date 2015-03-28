require_relative 'coinjar'
require_relative 'coinbase'

module Transfers
  class Transfer

    def initialize(source, target)
      @source = source
      @target = target
    end

    def transfer(source_amount)
      number_of_bitcoins = @source.buy_bitcoin_for(source_amount)
      @source.send_bitcoins(@target.address, number_of_bitcoins)
      @target.sell_bitcoin(number_of_bitcoins)
    end

  end
end