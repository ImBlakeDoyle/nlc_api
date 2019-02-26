require "json"
require "ibm_watson/natural_language_classifier_v1"
include IBMWatson


class CreateClassifier

  # Takes file and name to create a classifier
  def self.createClassifier(name, file)

    # puts "File is #{file}"

    filepath = File.absolute_path(file)

    natural_language_classifier = NaturalLanguageClassifierV1.new(
      iam_apikey: Rails.application.credentials.nlc_api,
      url: Rails.application.credentials.nlc_url
    )
    
    File.open(filepath) do |data|
      classifier = natural_language_classifier.create_classifier(
        training_data: data,
        metadata: {name: name, language: "en"}
      )
    end

  end

end