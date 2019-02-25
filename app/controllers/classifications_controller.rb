class ClassificationsController < ApplicationController
  # before_action :set_classification, only: [:show, :edit, :update, :destroy]

  # GET /classifications
  # GET /classifications.json
  def index
    # @classifications = Classification.all
    @classifiers = ListClassifiers.getClassifiers()
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

  # GET /classifications/1/edit
  def edit
  end

  # POST /classifications
  # POST /classifications.json
  def create

  end

  # PATCH/PUT /classifications/1
  # PATCH/PUT /classifications/1.json


  # DELETE /classifications/1
  # DELETE /classifications/1.json
  def destroy
    id = params["id"]
    @classifier = DeleteClassifier.deleteClassifier(id)
    redirect_to classifiers_path
  end 
  

end
