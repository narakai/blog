class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body

      # this line adds an integer column called `article_id`.
      # t.references 这行代码为两个模型的关联创建一个外键字段，同时还为这个字段创建了索引
      t.references :article, index: true

      t.timestamps
    end
  end
end
