class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :title_clickbait
    #validates :non_clickbait, inclusion: {:in %w(Won't Believe Secret Top [number] Guess), message: "Click Bait"}
    
    def title_clickbait
        if title && title.exclude?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
          errors.add :title, "Title is click-baity"
        end
    end
end
