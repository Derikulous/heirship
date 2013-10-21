json.array!(@liabilities) do |liability|
  json.extract! liability, :item, :property, :money
  json.url liability_url(liability, format: :json)
end
