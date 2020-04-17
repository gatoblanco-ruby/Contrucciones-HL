class Task < ApplicationRecord

    ##belongs_to :user

    validates :description, length: { maximum: 14 }


    ##has_many :task
end
