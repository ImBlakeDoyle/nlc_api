include IBMWatson
require 'net/http'

class NetClassification

    def self.classify(text)
        uri = URI("https://gateway-tok.watsonplatform.net/natural-language-classifier/api/v1/classifiers/#{Rails.application.credentials.classifier_id}/classify")
        api = Rails.application.credentials.nlc_api

        req = Net::HTTP::Post.new(uri.path)
        req.basic_auth("apikey", api)
        req['Content-type'] = "application/json"
        req.body = {'text': text}.to_json
        

        req_options = {
            use_ssl: uri.scheme == "https" 
        }

        res = Net::HTTP.start(uri.hostname, uri.port, req_options) {|http|
            http.request(req)
        }

        puts "response is #{res.body}"
        return res.body
    end

end