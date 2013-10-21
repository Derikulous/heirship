json.array!(@heirships) do |heirship|
  json.extract! heirship, :transfer_date
  json.url heirship_url(heirship, format: :json)
end
