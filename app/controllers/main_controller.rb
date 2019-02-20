class MainController < ApplicationController

    def display
        @content = form_params["content"]
    end

    private
    def form_params
        params.permit(:content)
    end
end
