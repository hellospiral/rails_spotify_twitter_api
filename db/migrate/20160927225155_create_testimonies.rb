class CreateTestimonies < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonies do |t|
      t.string :tweet_id
      t.string :screen_name
      t.text :content

      t.timestamps
    end
  end
end
