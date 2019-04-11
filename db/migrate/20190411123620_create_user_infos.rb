class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos, id: false, primary_key: :tn do |t|
      t.integer :tn
      t.string :fio
      t.string :tel, limit: 6
      t.integer :dept
      t.timestamps
    end
  end
end
