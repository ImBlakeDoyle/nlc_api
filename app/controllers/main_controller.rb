class MainController < ApplicationController

    def display
        @text = form_params["content"]

        categories = MyClassificationBuilder.classify(@text)

        @content = categories.result
        @classes = categories.result["classes"]

    end

    private
    def form_params
        params.permit(:content)
    end
end
