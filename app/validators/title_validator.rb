require 'pry'
class TitleValidator < ActiveModel::Validator

    # def validate(record)

    #     clickbait = [
    #     "Won't Believe",
    #     "Secret",
    #     "Top [number]",
    #     "Guess"
    #     ]

    #     clickbait.each do |c|
    #         unless record.title.include?(c)
    #             binding.pry
    #             record.errors[:title] << "Not sufficiently clickbait-y!"
    #         end
    #     end
    # end

    def validate(record)

        clickbait = [
        "Won't Believe",
        "Secret",
        "Top [number]",
        "Guess"
        ]

        if record.title != nil
            unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top [number]") || record.title.include?("Guess")
        
                record.errors[:title] << "Not sufficiently clickbait-y!"
            end
        end
        
    end


end