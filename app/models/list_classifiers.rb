include IBMWatson
require 'json'

class ListClassifiers

    def self.getClassifiers
        natural_language_classifier = NaturalLanguageClassifierV1.new(
            iam_apikey: Rails.application.credentials.nlc_api,
            url: Rails.application.credentials.nlc_url
          )
          
          classifiers = natural_language_classifier.list_classifiers
        #   puts JSON.pretty_generate(classifiers.result)
        #   puts classifiers.result["classifiers"]

          return classifiers.result["classifiers"]
    end

end