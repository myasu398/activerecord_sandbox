module Schema
  def self.load
    ActiveRecord::Schema.define do
      create_table :users, force: true do |t|
        t.string :name, null: false
        t.string :email, null: false
      end

      create_table :posts, force: true do |t|
        t.string :title, null: false
        t.text :content
        t.references :user, foreign_key: true
      end

      create_table :comments, force: true do |t|
        t.integer :post_id, null: false
        t.string :content
        t.references :user, foreign_key: true
      end

      create_table :images do |t|
        t.string  :name
        t.bigint  :imageable_id
        t.string  :imageable_type
        t.timestamps
      end
      add_index :images, [:imageable_type, :imageable_id]
    end
  end
end
