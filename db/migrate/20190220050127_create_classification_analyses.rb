class CreateClassificationAnalyses < ActiveRecord::Migration[5.2]
  def change
    create_table :classification_analyses do |t|

      t.timestamps
    end
  end
end
