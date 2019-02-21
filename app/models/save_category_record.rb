class SaveCategoryRecord
    def self.create(categories, id)
        results = categories.result["classes"]

        results.each do |key|
            @category_record = Category.new
            @category_record.classification_analysis_id = id
            @category_record.name = key["class_name"]
            @category_record.confidence = key["confidence"]
            @category_record.save
            p @category_record
        end
    end
end