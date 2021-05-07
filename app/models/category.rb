class Category < ApplicationRecord
    has_many :offers

    def to_s
        "#{name}"
    end
end
