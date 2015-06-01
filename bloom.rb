require 'unirest'

NPI = '1013026715'
response = Unirest.get "http://www.bloomapi.com/api/sources/usgov.hhs.npi/#{NPI}"
#resp2 = Unirest.get "http://www.npinumberlookup.org/getResultDetails.php?npinum=#{NPI}"
base = 'http://www.bloomapi.com/api/sources/usgov.hhs.npi?secret=NDdp5kCsLlBlOfh8nSnXEoiGzmzX9fqQ&key1'


puts response.code
puts response.body["result"]['credential']
puts response.body["result"]['provider_details']
puts response.body["result"]["npi"]