class MainController < ApplicationController

    def display
        @text = form_params["content"]

        # @record = MyClassificationBuilder.classify(@text)

        @record = NetClassification.classify(@text)

    end

    def index
        @records = ClassificationAnalysis.all
    end

    private
    def form_params
        params.permit(:content, :authenticity_token, :utf8, :commit)
    end
end
