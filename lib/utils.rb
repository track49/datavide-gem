require 'net/http'
require 'json'

def getDatavideApi(path, key)
  puts "http://www.datavide.com/api/#{path}?apikey=#{key}" 
  response = Net::HTTP.get(URI("http://www.datavide.com/api/#{path}?apikey=#{key}"))
  JSON.parse(response)
end
