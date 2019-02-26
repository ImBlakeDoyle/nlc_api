include IBMWatson
require 'json'

namespace :rake_test do

  task queryTime: :environment do

        @startArray = []
        @resultArray = []
        @endArray = []

        @sentences = [
          "I am filled with sadness",
          "I am tired",
          "Money is a concern",
          "I have nobody",
          "My relationship has ended"
        ]

        @sentences.each do |i|

          # Set start time
          startTime = Time.new
          @startArray.push(startTime)
          puts NlcClassificationBuilder.classify(i)

          # Set end time
          endTime = Time.new
          @endArray.push(endTime)

          # Get time between start and end
          timeBetween = endTime - startTime
          @resultArray.push(timeBetween)

        end

        averageTime = @resultArray.sum / @resultArray.size
        
        puts "Start array is: #{@startArray}"
        puts "End array is: #{@endArray}"
        puts "Result array is: #{@resultArray}" 
        puts "Average time is: #{averageTime}"
        
  end
end
 