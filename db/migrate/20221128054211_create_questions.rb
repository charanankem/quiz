class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question_content,     null: false

      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.string :option_4


      t.string :correct_answer

      t.timestamps
    end
  end
end
