require "json"
require "ibm_watson/natural_language_classifier_v1"
include IBMWatson


class CreateClassifier

  def self.createClassifier(name, file)
    
    puts "file is #{file}"
    puts "name is #{name}"

  #   natural_language_classifier = NaturalLanguageClassifierV1.new(
  #     iam_apikey: Rails.application.credentials.nlc_api,
  #     url: Rails.application.credentials.nlc_url
  #   )
    
  #   File.open(file) do |data|
  #     classifier = natural_language_classifier.create_classifier(
  #       training_data: training_data,
  #       metadata: {name: name, language: "en"}
  #     )
  # end
  end

end