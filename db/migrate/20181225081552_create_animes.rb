class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.bigserial :anime_id
      t.bigserial :gid
      t.string :name
      t.string :precision
      t.string :vintage

      t.timestamps
    end
    add_index :animes, :anime_id, unique: true
  end
end
