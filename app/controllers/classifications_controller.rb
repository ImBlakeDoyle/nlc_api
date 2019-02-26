class ClassificationsController < ApplicationController

  def index
    @classifiers = ListClassifiers.listClassifiers()
  end

  def show
    id = params["id"]
    @classifier = ShowClassifier.showClassifier(id)
  end

  def create

    puts params[ :uploaded_file ]

    name = params["name"]
    file = params["file"]
    CreateClassifier.createClassifier(name, file)
  end

  def destroy
    id = params["id"]
    @classifier = DeleteClassifier.deleteClassifier(id)
    redirect_to classifiers_path
  end 
  
end
