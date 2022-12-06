# frozen_string_literal: true

json.content format_content(@wr.content)
json.author do
  json.name "PumpSpot"
  json.email_address "help@pumpspot.github.dev"
  json.url "https://pumpspot.github.dev"
end

json.(@wr)
