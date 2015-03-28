require 'transfers/transfer'

namespace :money do

  desc "Testing"
  task send: :environment do
    coinbase = Transfers::Coinbase.new
    coinjar = Transfers::Coinjar.new
    t = Transfers::Transfer.new(coinbase, coinjar)
    t.transfer(1)
  end


end