class TitleValidator < ActiveModel::Validator 
    def validate(record)
        if record.title != nil
         unless record.title.match?("Won't Believe"|| "Secret"|| "Top[number]"||"Guess")
            record.errors[:title] << "Add a Clickbait title"
          end
        end
    end
end