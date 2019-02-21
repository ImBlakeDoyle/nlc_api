include IBMWatson
require 'json'

class MyClassificationBuilder

    def self.classify(text)
        natural_language_classifier = NaturalLanguageClassifierV1.new(
        iam_apikey: Rails.application.credentials.nlc_api,
        url: Rails.application.credentials.nlc_url
        )

        categories = natural_language_classifier.classify(
        classifier_id: Rails.application.credentials.classifier_id,
        text: text
        )

        record = SaveClassificationRecord.create(text)

        SaveCategoryRecord.create(categories, record.id)

        return record      
    end

end