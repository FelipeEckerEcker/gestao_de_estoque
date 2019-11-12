class Operacao < ApplicationRecord
    enum tipo: { venda: 0, compra: 1, devolucao_de_venda: 2, devolucao_de_compra: 3 }

    validates :nome, :tipo, presence:true
end
