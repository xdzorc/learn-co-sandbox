require 'net/http'
require 'open-uri'
require 'json'
 
class GetPrograms
 
  URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"
 
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
# we use the JSON library to parse the API response into nicely formatted JSON
  programs = JSON.parse(self.get_response_body)
  programs.collect do |program|
    program["latitude"]  
    end
  end
end

programs=GetPrograms.new
haha=programs.get_response_body
programs.parse_json.uniq
