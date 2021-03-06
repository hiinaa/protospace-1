class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.text        :text
        t.references  :user, index: true, foreign_key: true
        t.references  :prototype, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
