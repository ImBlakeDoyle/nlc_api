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
    @classification.destroy
    respond_to do |format|
      format.html { redirect_to classifications_url, notice: 'Classification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
