require 'pry'
class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(fiction nonfiction Fiction Nonfiction) }
    validate :clickbait

    def clickbait
# binding.pry
        # phrase = ["Won't Believe", "Secret", "Top", "Guess"]
        # if :title.downcase["won't believe"] || :title.downcase["secret"] || :title.downcase["top"] || :title.downcase["guess"]
        #     return true
        # else
        #     errors.add(:title, "no way - not clickbait")
        #     return false
        # end
        if self.title?
            unless self.title.downcase["won't believe"] || self.title.downcase["secret"] || self.title.downcase["top"] || self.title.downcase["guess"]
                errors.add(:title, "no way - not clickbait")
            end
        end

    end

end
