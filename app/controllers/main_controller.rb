include IBMWatson
require 'json'

class MainController < ApplicationController

    def display
        text = form_params["content"]

        natural_language_classifier = NaturalLanguageClassifierV1.new(
        iam_apikey: "9ToG0vwSe4sOGzOSFqw7qct0WDNBBA33AGNKc03CJ7hq",
        url: "https://gateway-tok.watsonplatform.net/natural-language-classifier/api"
        )

        categories = natural_language_classifier.classify(
        classifier_id: "083e4dx38-nlc-3",
        text: text
        )


        # p categories.result["top_class"]

        @content = categories.result["top_class"]
        @confidence = categories.result["classes"][0]["confidence"]

        # @content = JSON.pretty_generate(categories.result)
    end

    private
    def form_params
        params.permit(:content)
    end
end
