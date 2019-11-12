class CreateMovimentoDeEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :movimento_de_estoques do |t|
      t.datetime :data
      t.integer :quantidade
      t.string :pessoa
      t.string :operacao
      t.string :produto

      t.timestamps
    end
  end
end
