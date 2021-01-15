class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250}
    validates :summary, presence: true, length: { maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :is_clickbait?
#singular call on the method
#plural validate helpers
    CLICKBAIT_PATTERN =
  [ /Won't Believe/, /Secret/, /Top [number]/, /Guess/ ]

        def is_clickbait?
            if CLICKBAIT_PATTERN.none? {|pattern| pattern.match title}
                errors.add(:title, "possible clickbait")

            end
        end
  





end
