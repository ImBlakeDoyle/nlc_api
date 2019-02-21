class MainController < ApplicationController

    def display
        @text = form_params["content"]

        @record = MyClassificationBuilder.classify(@text)

        @associated = Category.where(classification_analysis_id: @record.id)

    end

    private
    def form_params
        params.permit(:content)
    end
end
