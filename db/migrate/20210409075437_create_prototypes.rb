class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title,               null: false
      t.text   :catch_copy,          null: false
      t.text   :concept,             null: false
      # タイトル、キャッチコピー、コンセプトを保存するための記述。
      t.references :user, foreign_key: true
      # t.references :comment, foreign_key: true
      # ユーザーのデータを参照したいので、レファレンスを使い、外部キーを記述した。
      t.timestamps
    end
  end
end
