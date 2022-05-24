class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, index: true
      t.references :post, null: false, index: true
      t.text :content, null: false
      t.timestamp :published_at

      t.timestamps
    end
  end
end
