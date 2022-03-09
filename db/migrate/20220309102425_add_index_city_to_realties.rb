class AddIndexCityToRealties < ActiveRecord::Migration[7.0]
  def change
    add_reference :realties, :city, foreign_key: true
  end
end
