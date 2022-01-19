class AddAbilitiesToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :abilities, :string
  end
end
