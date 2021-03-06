class CreateFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :answer
      t.integer :project_id

      t.timestamps
    end

    add_index :faqs, :project_id
  end
end
