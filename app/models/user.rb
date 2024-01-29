class User < ApplicationRecord
    validates :name, presence:true
    validates :email,presence:true, uniqueness:true

    validate:no_numbs

    has_one:profile
    has_many:articles

    private

    def no_numbs
        if name.match(/\d/)
            errors.add(:name,'nono no noumbers')
        end
    end
    
end
