include IBMWatson
require 'json'
require 'net/http'

class Classify
    attr_reader :formatter

    def initialize(formatter)
        @formatter = formatter.new
    end

    def classify_categories
        text = "is it hot today?"
        @formatter.classify_categories(text)
    end
end




x = Classify.new(NlcGem)                                                          
x.classify_categories