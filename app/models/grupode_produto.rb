class GrupodeProduto < ApplicationRecord 
    belongs_to :produto

    validates :nome, :produto, presence: true
end
