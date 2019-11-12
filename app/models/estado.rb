class Estado < ApplicationRecord
    belongs_to :cidade

    validates :nome, :cidade, presence: true
end
