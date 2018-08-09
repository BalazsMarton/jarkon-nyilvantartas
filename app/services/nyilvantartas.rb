class Nyilvantartas
	def self.lekeres(actual_url)
		api_key = ENV["API_KEY"]

		url = URI(actual_url)

		http = Net::HTTP.new(url.host,url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request["x-auth-token"] = api_key
		request["cache-control"] = 'no-cache'

		res = http.request(request)
		response = JSON.parse(res.body)
	end
end