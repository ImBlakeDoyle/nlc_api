include IBMWatson
require 'json'

class ShowClassifier

    def self.showClassifier(id)
        natural_language_classifier = NaturalLanguageClassifierV1.new(
            iam_apikey: Rails.application.credentials.nlc_api,
            url: Rails.application.credentials.nlc_url
          )
          
          status = natural_language_classifier.get_classifier(
            classifier_id: id
          )
          return status.result
    end

end 

