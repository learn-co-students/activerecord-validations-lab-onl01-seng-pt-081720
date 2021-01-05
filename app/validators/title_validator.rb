class TitleValidator < ActiveRecord::Validator
    def validate(record)
        if record.title.include?("Won't Believe", "Secret", "Top [number]", "Guess")
            record.errors[:title] << "Title is click-baity"
        end
    end
end