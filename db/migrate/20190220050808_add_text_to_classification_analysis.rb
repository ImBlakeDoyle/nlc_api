class AddTextToClassificationAnalysis < ActiveRecord::Migration[5.2]
  def change
    add_column :classification_analyses, :text, :text
  end
end
