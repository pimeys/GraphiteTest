require 'sinatra'
require 'net/http'
require 'uri'
require 'yaml'

get '/' do
  File.read('index.html')
end

get '/data' do
  config = YAML.load_file("config.yml")
  uri = URI.parse(config['url'])
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Get.new(uri.request_uri)
  request.basic_auth(config['username'], config['password'])
  http.request(request).body
end
