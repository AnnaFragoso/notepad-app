class Note < ApplicationRecord
    # Validators
    validates :title,
              :note,
              :priority, 
              presence: true

    ## Relationships
    belongs_to :user
end
