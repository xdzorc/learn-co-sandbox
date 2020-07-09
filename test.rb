require 'open-uri'
require 'net/http'
require 'json'
require 'awesome_print'

url ="https://learn-co-curriculum.github.io/json-site-example/endpoints/locations.json"
uri = URI.parse(url)
response =Net::HTTP.get_response(uri).body


 ap JSON.parse(response)