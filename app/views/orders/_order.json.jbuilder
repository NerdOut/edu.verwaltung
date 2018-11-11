json.extract! order, :ordernumber, :text, :customer, :created_at, :updated_at
json.url order_url(order, format: :json)
