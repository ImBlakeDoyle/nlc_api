class MainController < ApplicationController

    def display
        @text = form_params["content"]

        @record = MyClassificationBuilder.classify(@text)

    end

    def index
        @records = ClassificationAnalysis.all
    end

    private
    def form_params
        params.permit(:content)
    end
end
