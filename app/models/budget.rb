class Budget < ApplicationRecord
    has_and_belongs_to_many :travels
end
