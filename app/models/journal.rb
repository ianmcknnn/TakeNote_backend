class Journal < ApplicationRecord
    belongs_to :user
    has_many :pages

    def number
        self.pages.last.pageNumber ? self.pages.last.pageNumber + 1 : 1
    end
end
