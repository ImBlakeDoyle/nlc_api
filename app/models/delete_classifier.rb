include IBMWatson
require 'json'

class DeleteClassifier

    def self.deleteClassifier(id)
        
        # natural_language_classifier = NaturalLanguageClassifierV1.new(
        #     iam_apikey: Rails.application.credentials.nlc_api,
        #     url: Rails.application.credentials.nlc_url
        # )

        # status = natural_language_classifier.delete_classifier(
        # classifier_id: id
        # )

        puts "deleted #{id}"

    end

end