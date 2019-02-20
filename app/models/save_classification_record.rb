class SaveClassificationRecord
    def self.create(text)
        @classification_record = ClassificationAnalysis.new
        @classification_record.text = text
        if @classification_record.save
            puts @classification_record
            return @classification_record.id 
        else 
            puts "Error! Unable To Save" 
        end
    end
end