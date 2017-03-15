class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.references :veterinario, foreign_key: true
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end
end
