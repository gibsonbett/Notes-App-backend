class Note < ActiveRecord::Base
    belongs_to :user
    belongs_to :category

    def self.created_at
        self.all.order(created_at: :asc)
    end
end