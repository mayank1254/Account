class HomeController < ApplicationController
  require 'net/http'

  def index
    url = URI.parse('http://localhost:3001/v1/customer_details')
    req = Net::HTTP::Get.new(url.to_s)
    req['Authorization'] = "bfjvbfifbviwfvbehib2ib234r435b2432hj123hj131b2h3j1"

    res = Net::HTTP.start(url.host, url.port, ) {|http|
      http.request(req)
    }
    @customer_details =  JSON.parse(res.body)    
  end
end
