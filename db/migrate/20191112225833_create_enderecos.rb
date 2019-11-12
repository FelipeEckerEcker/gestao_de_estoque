class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :nome
      t.string :cep
      t.string :bairro

      t.timestamps
    end
  end
end
