class Produto < ApplicationRecord
    belongs_to :grupodeproduto, class_name: 'Pessoa'
    belongs_to :unidade, class_name: 'Pessoa'

    validates :nome, :grupodeproduto, :unidade, presence: true
end
