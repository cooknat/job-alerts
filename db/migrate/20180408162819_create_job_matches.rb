class CreateJobMatches < ActiveRecord::Migration
  def change
    create_table :job_matches do |t|
      t.string :job_info
      t.string :text
      t.string :job_link
      t.string :string
      t.references :job_search, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
