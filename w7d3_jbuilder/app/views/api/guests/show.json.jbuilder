json.partial!('api/guests/guests', guest: @guest)
json.gifts @guest.gifts do |gift|
  json.partial!('api/gifts/gifts', gift: gift)
end
