class FixCategoryColumnInTasks < ActiveRecord::Migration[8.0]
  def change
    remove_column :tasks, :category, :string  # 現在の間違ったカラムを削除（型がstringの場合）
    add_reference :tasks, :category, foreign_key: true  # 正しい外部キーを追加
  end
end
