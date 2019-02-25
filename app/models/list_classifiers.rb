include IBMWatson
require 'json'

class ListClassifiers

    def self.listClassifiers
        natural_language_classifier = NaturalLanguageClassifierV1.new(
            iam_apikey: Rails.application.credentials.nlc_api,
            url: Rails.application.credentials.nlc_url
          )
          
          classifiers = natural_language_classifier.list_classifiers

          return classifiers.result["classifiers"]
    end

end