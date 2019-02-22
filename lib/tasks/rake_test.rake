include IBMWatson
require 'json'

namespace :rake_test do

  task luca: :environment do
    puts MyClassificationBuilder.classify("Hot?")
  end

  task test1: :environment do
    # ruby "~/Desktop/code/rails/nlc_api/lib/tasks/my_file.rb"
    class MyClassificationBuilder

        @startArray = []
        @resultArray = []
        @endArray = []

        @sentences = [
          'is it hot?',
          'askjdhasdkj',
          'askjdhasdkj',
          'askjdhasdkj',
          'asdasd'
        ]

        def self.classify(text)

          time = Time.new
          @startArray.push(time)
          # Add start time to array
            natural_language_classifier = NaturalLanguageClassifierV1.new(
            iam_apikey: Rails.application.credentials.nlc_api,
            url: Rails.application.credentials.nlc_url
            )

            categories = natural_language_classifier.classify(
            classifier_id: Rails.application.credentials.classifier_id,
            text: text
            )
            # Add categories.result to array
            # Add end time to array
            @resultArray.push(categories.result)
            endTime = Time.new
            @endArray.push(endTime)    
        end

          5.times do

            self.classify(@sentences[i])
          end
          puts @startArray
    end
  end
end
 