require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/homework')

require('json')


get '/address' do
  content_type(:json)

  # address = Address.new()
  
  result = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }

  return result.to_json()
end

get '/' do
  
  erb(:my_info)
end

get '/upcase' do
  content_type(:json)
  result = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }

  address = WordFormatter.new(result)
  @data = address.postcode_upcase
  return @data.to_json()
end
