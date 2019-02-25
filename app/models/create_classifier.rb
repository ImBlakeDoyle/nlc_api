require "json"
require "ibm_watson/natural_language_classifier_v1"
include IBMWatson

natural_language_classifier = NaturalLanguageClassifierV1.new(
  iam_apikey: Rails.application.credentials.nlc_api,
  url: Rails.application.credentials.nlc_url
)

File.open("./train.csv") do |training_data|
  classifier = natural_language_classifier.create_classifier(
    training_data: training_data,
    metadata: {name: "My Classifier", language: "en"}
  )
  puts JSON.pretty_generate(classifier.result)
end