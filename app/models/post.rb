class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 10 }
    validates :summary, length: { maximum: 130 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
        message: "%{value} is not a valid category" }
    validate :title_must_contain_click_bait_words

    private
    def title_must_contain_click_bait_words
        approved_click_bait = ["Won't Believe", "Secret", "Top [number]", "Guess"]
        if !self.title.nil?
            if !(approved_click_bait.any? { |word| self.title.include?(word)})
                errors.add(:non_clickbait, "Title is invlaid.")
            end
        end
    end
end
