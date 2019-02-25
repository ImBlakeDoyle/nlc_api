class ClassificationsController < ApplicationController
  # before_action :set_classification, only: [:show, :edit, :update, :destroy]

  # GET /classifications
  # GET /classifications.json
  def index
    # @classifications = Classification.all
    @classifiers = ListClassifiers.listClassifiers()
  end

  # GET /classifications/1
  # GET /classifications/1.json
  def show
    id = params["id"]
    @classifier = ShowClassifier.showClassifier(id)
  end

  # GET /classifications/new
  def new
    # @classification = Classification.new
  end

  # POST /classifications
  # POST /classifications.json
  def create
    name = params["name"]
    file = params["file"]
    CreateClassifier.createClassifier(name, file)
  end


  # DELETE /classifications/1
  # DELETE /classifications/1.json
  def destroy
    id = params["id"]
    @classifier = DeleteClassifier.deleteClassifier(id)
    redirect_to classifiers_path
  end 
  

end
