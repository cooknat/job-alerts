class CreateJobPages < ActiveRecord::Migration
  def change
    create_table :job_pages do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
