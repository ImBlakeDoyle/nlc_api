class ClassifyNetHttp
    def classify_categories(text)
        # uri = URI("https://gateway-tok.watsonplatform.net/natural-language-classifier/api/v1/classifiers/083e4dx38-nlc-3/classify")
        # api = Rails.application.credentials.nlc_api

        # req = Net::HTTP::Post.new(uri.path)
        # req.basic_auth("apikey", api)
        # req['Content-type'] = "application/json"
        # req.body = {'text': text}.to_json
        

        # req_options = {
        #     use_ssl: uri.scheme == "https" 
        # }

        # res = Net::HTTP.start(uri.hostname, uri.port, req_options) {|http|
        #     http.request(req)
        # }

        # puts "response is #{res.body}"
        puts text
    end

end