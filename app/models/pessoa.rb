class Pessoa < ApplicationRecord
    has_many :movimento_estoque

    validates :nome, :documento, :endereco, :cidade, :estado, presence: true
end
