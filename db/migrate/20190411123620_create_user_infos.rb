class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos, id: false, primary_key: :tn do |t|
      t.integer :tn, null: false
      t.string :fio
      t.string :tel, limit: 6
      t.integer :dept
      t.timestamps
    end

    # index: true, unique: true, 
    add_index :user_infos, :tn, unique: true
  end
end
