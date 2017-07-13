json.partial! 'api/parties/party', party: @party
json.guests @party.guests do |guest|
  json.partial! 'api/guests/guests', guest: guest
  json.gifts guest.gifts do |gift|
    json.partial!('api/gifts/gifts', gift: gift)
  end
end
