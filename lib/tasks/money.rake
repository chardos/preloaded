require 'transfers/transfer'

namespace :money do

  desc "Testing coinbase -> coinjar"
  task send_coinjar: :environment do
    coinbase = Transfers::CoinbaseClient.ben
    coinjar = Transfers::CoinjarClient.greg
    t = Transfers::Transfer.new(coinbase, coinjar)
    t.transfer(1)
  end

  desc "Testing coinjar -> coinbase"
  task send_coinbase: :environment do
    coinbase = Transfers::CoinbaseClient.ben
    coinjar = Transfers::CoinjarClient.greg
    t = Transfers::Transfer.new(coinjar, coinbase)
    t.transfer(1)
  end



end