class Post < ApplicationRecord
    validates :title,presence:true,uniqueness:true
    validates :published_at,presence:true

    before_create :toCap

    def toCap
        self.title=title.split.map(&:capitalize).join(' ')
    end
end
