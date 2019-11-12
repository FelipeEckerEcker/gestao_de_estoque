class Pessoa < ApplicationRecord

    validates :nome, :documento, :endereco, :cidade, :estado, presence: true
end
