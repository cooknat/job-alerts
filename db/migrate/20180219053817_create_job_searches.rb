class CreateJobSearches < ActiveRecord::Migration
  def change
    create_table :job_searches do |t|
      t.references :user, index: true, foreign_key: true
      t.references :job_page, index: true, foreign_key: true
      t.string :job_title

      t.timestamps null: false
    end
  end
end
