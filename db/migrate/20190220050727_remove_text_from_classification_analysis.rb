class RemoveTextFromClassificationAnalysis < ActiveRecord::Migration[5.2]
  def change
    remove_column :classification_analyses, :text, :string
  end
end
