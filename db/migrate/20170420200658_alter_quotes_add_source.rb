class AlterQuotesAddSource < ActiveRecord::Migration[5.0]
  def change
    add_column :quotes, :source, :string
  end
end
