class MainController < ApplicationController

    def display
        @text = form_params["content"]

        categories = MyClassificationBuilder.classify(@text)
        p categories

        @content = categories.result
        @topclass = categories.result["top_class"]
        @confidence = categories.result["classes"][0]["confidence"]

    end

    private
    def form_params
        params.permit(:content)
    end
end
