class Book < ApplicationRecord
    validates_presence_of :title, :author

    enum status: ["On shelf", "Taken"]
end
