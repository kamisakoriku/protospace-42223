class AddTextToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :text, :text
    
    # 既存データがある場合はコピー
    execute "UPDATE comments SET text = content WHERE content IS NOT NULL"
    
    # この時点ではcontentカラムは残しておく
  end
end