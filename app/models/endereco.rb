class Endereco < ApplicationRecord
    belongs_to :cidade

    validates :nome, :cep, :bairro, :cidade, presence: true
end
