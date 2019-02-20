include IBMWatson

class MainController < ApplicationController

    def display
        text = form_params["content"]

        natural_language_classifier = NaturalLanguageClassifierV1.new(
        iam_apikey: "9ToG0vwSe4sOGzOSFqw7qct0WDNBBA33AGNKc03CJ7hq",
        url: "https://gateway-tok.watsonplatform.net/natural-language-classifier/api/v1/classifiers/083e4dx38-nlc-3/"
        )

        categories = natural_language_classifier.classify(
        classifier_id: "083e4dx38-nlc-3",
        text: text
        )

        puts categories.result


        @content = JSON.pretty_generate(categories.result)
    end

    private
    def form_params
        params.permit(:content)
    end
end
