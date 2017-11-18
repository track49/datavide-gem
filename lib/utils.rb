require 'net/http'
require 'json'

def getDatavideApi(path, key)
  response = Net::HTTP.get(URI("http://api.datavide.com/api/#{path}?apikey=#{key}"))
  JSON.parse(response)
end
