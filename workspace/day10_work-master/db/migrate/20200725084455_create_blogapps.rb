class CreateBlogapps < ActiveRecord::Migration[5.2]
  def change
    create_table :blogapps do |t|

      t.timestamps
    end
  end
end
