require 'net/http'
require "json"
class IPinfo
  def initialize(id)
  @id = id
  url = URI.parse("http://ip-api.com/json/#{@id}")
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
  }
  @@re1 = JSON.parse(res.body)
  end
  def country
    return @@re1['country']
  end
  def countryCode
    return @@re1['countryCode']
  end
  def region
    return @@re1['region']
  end
  def regionName
    return @@re1['regionName']
  end
  def city
    return @@re1['city']
  end
  def zip
    return @@re1['zip']
  end
  def lat
    return @@re1['lat']
  end
  def lon
    return @@re1['lon']
  end
  def timezone
    return @@re1['timezone']
  end
  def isp
    return @@re1['isp']
  end
  def org 
    return @@re1['org']
  end
  def as
    return @@re1['as']
  end
  def query 
    return @@re1['query']
  end

end

