class Post < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :is_clickbait?

    def is_clickbait?
      if none.CLICKBAIT_PATTERNS.none  do |p|   
        errors.add()
    end


end
