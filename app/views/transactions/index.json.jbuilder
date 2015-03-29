json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :plan, :recipient, :bsb, :acc, :amount
  json.url transaction_url(transaction, format: :json)
end
