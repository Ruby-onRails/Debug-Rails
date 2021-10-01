class CreatePerriors < ActiveRecord::Migration[6.1]
  def change
    create_table :perriors do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
