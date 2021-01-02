class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    
    validate :clickbait_title
    # validates_with PostValidator


    def clickbait_title
        if !!title
            unless title.include?("Won't Believe") || title.include?("Secret") || title.include?("Guess") || (title.include?("Top") && title.split(" ").collect {|word| word.to_i}.collect {|int| int > 0}.include?(true))
                errors.add(:clickbait, "clickbait")
            end
        end
    end
end
