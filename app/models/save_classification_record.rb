class SaveClassificationRecord
    def self.create(text)
        @classification_record = ClassificationAnalysis.new
        @classification_record.text = text
        if @classification_record.save
            return @classification_record 
        else 
            puts "Error! Unable To Save" 
        end
    end
end