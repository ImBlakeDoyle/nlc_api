include IBMWatson
  
class TestBuilder
    def self.classify
        puts"hello"
        natural_language_classifier = NaturalLanguageClassifierV1.new(
        iam_apikey: Rails.application.credentials.nlc_api,
        url: Rails.application.credentials.nlc_url
        )

        categories = natural_language_classifier.classify(
        classifier_id: Rails.application.credentials.classifier_id,
        text: "is it hot today?"
        )

        # record = SaveClassificationRecord.create(text)

        # SaveCategoryRecord.create(categories, record.id)

        p categories
    end

    self.classify

end 



