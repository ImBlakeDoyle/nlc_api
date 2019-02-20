include IBMWatson
require 'json'

class MainController < ApplicationController

    def display
        @text = form_params["content"]

        natural_language_classifier = NaturalLanguageClassifierV1.new(
        iam_apikey: Rails.application.credentials.nlc_api,
        url: Rails.application.credentials.nlc_url
        )

        categories = natural_language_classifier.classify(
        classifier_id: Rails.application.credentials.classifier_id,
        text: @text
        )


        puts categories.result

        @content = categories.result
        @topclass = categories.result["top_class"]
        @confidence = categories.result["classes"][0]["confidence"]

    end

    private
    def form_params
        params.permit(:content)
    end
end
