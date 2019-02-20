class SaveCategoryRecord
    def self.create(categories, id)
        @category_record = Category.new
        @category_record.classification_analysis_id = id
        @category_record.name = categories.result["top_class"]
        @category_record.confidence = categories.result["classes"][0]["confidence"]
        @category_record.save
        p @category_record
    end
end